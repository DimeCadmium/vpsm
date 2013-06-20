<?php

if (!defined('ROOTPATH'))
	die("Invalid access");

if (!isset($config) || !is_array($config))
	$config = array();

require_once('config.php');
