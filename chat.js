document.addEventListener("DOMContentLoaded",function(){
    let socket;
    const connectWebSocket=()=>{
        socket=new WebSocket('ws://localhost:8080/');
        socket.onopen=() =>{
            console.log("Conexión exitosa");
        };
        socket.onmessage=(e)=>{
            console.log(JSON.parse(e.data));
        };
        /* socket.onerror=(error)=>{
            console.error('Error en la conexión:',error);
        }; */
        socket.onclose=()=>{
            console.log('Conexión cerrada');
            // Intentar reconectar después de un breve intervalo
            setTimeout(connectWebSocket,3000);
        };
    };
    document.querySelector('#btn').addEventListener("click",()=>{
        var nombre=document.querySelector('#nombre').value;
        var mensaje=document.querySelector('#mensaje').value;
        socket.send(JSON.stringify({"room":"sala1",message:'Hola sala1' }));
    });
    connectWebSocket();
});