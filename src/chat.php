<?php
namespace MyApp;
require_once __DIR__ . '/../vendor/autoload.php';
use Ratchet\MessageComponentInterface;
use Ratchet\ConnectionInterface;

class Chat implements MessageComponentInterface{
    protected $clients;
    protected $rooms;
    protected $loop;
    protected $socket;
    protected $con;
    public function __construct(){
        $this->clients = new \SplObjectStorage;
        $this->rooms = [];
        $this->users = [];
        $this->loop = \React\EventLoop\Factory::create();
        $this->socket = new \React\Socket\Server('127.0.0.1:8080', $this->loop);
        require_once __DIR__ . '/../database/conexion.php';
        $this->con = $con;
        echo "server iniciado";
    }
    public function onOpen(ConnectionInterface $conn){
        $this->clients->attach($conn);//Store the connection in the client list
        echo "Nueva conexion! ({$conn->resourceId})\n";
    }
    public function onMessage(ConnectionInterface $from,$msg){
        $data = json_decode($msg,true);
        //Verificar si el mensaje contiene información de la sala
        if(isset($data['from'])&&isset($data['to'])&&isset($data['msg'])){
            $sql=mysqli_query($this->con,"SELECT xchat_cod_xchat room FROM acaxchat WHERE (xchat_imsg_xchat=$data[from] AND xchat_omsg_xchat=$data[to]) OR (xchat_imsg_xchat=$data[to] AND xchat_omsg_xchat=$data[from]) LIMIT 1");
            $sql=mysqli_fetch_assoc($sql);
            if(isset($sql['room'])){
                $room = $sql['room'];
                if(!isset($this->rooms[$room])){
                    $this->rooms[$room] = new \SplObjectStorage;
                }
                $this->rooms[$room]->attach($from);
            }
            if(isset($sql['room'])){
                $room = $sql['room'];
                if (isset($this->rooms[$room])){
                    // Enviar el mensaje a todos los usuarios en la misma sala
                    foreach($this->rooms[$room] as $client){
                        // Evitar enviar el mensaje al mismo cliente que lo envió
                        if($client!==$from){
                            $client->send($msg);
                        }
                    }
                }
            }
        }
        $user=(isset($data['user']))?$data['user']:$data['from'];
        if(isset($user)){
            $room = $user;
            if(!isset($this->users[$room])){
                $this->users[$room] = new \SplObjectStorage;
            }
            $this->users[$room]->attach($from);
        }$dato="";$variables=array();$item = [];
        if(isset($data['to'])){
            $permiso=mysqli_query($this->con,"SELECT xchat_omsg_xchat FROM acaxchat WHERE xchat_bell_xchat=1 AND xchat_imsg_xchat=$data[to] LIMIT 1");
            if($permiso=mysqli_fetch_assoc($permiso)){$ulmsg="";
                $notice=mysqli_query($this->con,"SELECT COUNT(*) notice FROM acachats WHERE chats_imsg_chats=$data[to] AND chats_read_chats=1");
                $notice=mysqli_fetch_assoc($notice);
                $item=json_encode($variables, \JSON_UNESCAPED_UNICODE);
                $msg=mysqli_query($this->con,"SELECT SUBSTRING(chats_msg_chats,1,15) AS msg FROM acachats WHERE chats_imsg_chats=$data[to] AND chats_omsg_chats=$permiso[xchat_omsg_xchat] AND chats_read_chats=1 ORDER BY chats_cod_chats DESC LIMIT 1");
                $msg=mysqli_fetch_assoc($msg);
                $usr=mysqli_query($this->con,"SELECT users_usr_users,users_sts_users FROM acausers WHERE users_cod_users=$permiso[xchat_omsg_xchat]");
                $usr=mysqli_fetch_assoc($usr);
                $reader=mysqli_query($this->con,"SELECT COUNT(chats_read_chats) readed FROM acachats LEFT JOIN acausers ON acausers.users_cod_users=acachats.chats_imsg_chats WHERE chats_omsg_chats=$permiso[xchat_omsg_xchat] AND chats_imsg_chats=$data[to] AND chats_read_chats=1");
                $reader=mysqli_fetch_assoc($reader);
                if(!empty($msg['msg']))$ulmsg=(strlen($msg['msg'])>15)?substr($msg['msg'],0,15).'...':$msg['msg'];
                $item = [
                    'cod'=>"$permiso[xchat_omsg_xchat]",
                    'nth'=>"$notice[notice]",
                    'image'=>"../images/default-user.jpeg",
                    'msg'=>"$ulmsg",
                    'usr'=>"$usr[users_usr_users]",
                    'read'=>"$reader[readed]",
                    'sts'=>"$usr[users_sts_users]"
                ];
                array_push($variables,$item);
                $item=json_encode($variables, \JSON_UNESCAPED_UNICODE);
                mysqli_query($this->con,"UPDATE acaxchat SET xchat_bell_xchat=0,xchat_evn_xchat=1 WHERE xchat_imsg_xchat=$data[to] AND xchat_omsg_xchat=$permiso[xchat_omsg_xchat]");
                if(isset($user)){
                    $room = $data['to'];
                    if(isset($this->users[$room])){
                        // Enviar el mensaje a todos los usuarios en la misma sala
                        foreach($this->users[$room] as $client){
                            // Evitar enviar el mensaje al mismo cliente que lo envió
                            if($client!==$from)$client->send($item);
                        }
                    }
                }
            }
            /*  */
        }
        /* 
        foreach($this->clients as $client){//Access session variables
            if ($from !== $client){
                //The sender is not the receiver, send to each client connected
                $client->send($item);
            }
        }
         */
        
    }
    public function onClose(ConnectionInterface $conn){
        //The connection is closed, remove it, as we can no longer send it messages
        $this->clients->detach($conn);
        echo "Connection {$conn->resourceId} has disconnected\n";
    }
    public function onError(ConnectionInterface $conn,\Exception $e){
        echo "An error has occurred: {$e->getMessage()}\n";
        $this->reconnect();//Reconnect the connection
    }

    protected function reconnect(){
        echo "Intentando reconectar...\n";
        //Wait a short interval before attempting to reconnect
        $this->loop->addTimer(3, function(){
            $this->socket->close();
            $this->socket->listen(8080);
            echo "Reconexión exitosa!\n";
        });
    }
    public function run(){
        $server = new \Ratchet\WebSocket\WsServer($this);
        $app = new \Ratchet\Http\HttpServer($server);
        $server = new \Ratchet\Server\IoServer($app, $this->socket, $this->loop);
        echo "Servidor WebSocket iniciado\n";
        $this->loop->run();
    }
}
//Inicia el servidor
$component = new Chat();
$component->run();