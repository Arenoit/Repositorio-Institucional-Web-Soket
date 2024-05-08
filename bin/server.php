<?php
use Ratchet\Server\IoServer;
use Ratchet\Http\HttpServer;
use Ratchet\WebSocket\WsServer;
use React\Socket\Server as ReactSocketServer;
use React\EventLoop\Factory as ReactEventLoopFactory;
use MyApp\Chat;
require dirname(__DIR__) . '/vendor/autoload.php';
$server = IoServer::factory(
    new HttpServer(
        new WsServer(
            new Chat()
        )
    ),
    8080
);
$server->run();