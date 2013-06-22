<?php
$mastercn = 'master';


$sslctx = stream_context_create(array('ssl' => array(
	'verify_peer' => true,
	'cafile' => '/opt/vpsm/ca/ca.crt',
	'local_cert' => '/opt/vpsm/local.pem',
#	'CN_match' => $mastercn, # on node side
)));


if (($stream = stream_socket_client('ssl://node1.jfr.im', $errno, $errstr, 2, STREAM_CLIENT_CONNECT, $sslctx) === FALSE) {
	die("$errno: $errstr\n");
}


