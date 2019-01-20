<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Class endpoint.php.
 * Desc: lorem ipsum
 * @author: Sigit Prayitno
 * @email: cybergitt@gmail.com
 */

$locallist = array(
	'127.0.0.1',
	'::1'
);

if(!in_array($_SERVER['REMOTE_ADDR'], $locallist)){
	define('master', "http://your_ip");
}else{
	define('master', "http://localhost/amb/");
}

$config['emailsender']	= "noreplyplease@example.com";
$config['emailfrom']	= "AMB System";

//Frontend Website
$config['frontend'] = constant('master');

// User photo uploads directory -> use in User.php
$config['uploads'] = constant('master').'uploads/';

// Endpoint for user basic info -> use in oauth/Resource.php
$config['user_info'] = constant('master').'user/info';

// Endpoint for user login -> use in oauth/PasswordCredential.php
$config['user_login'] = constant('master').'sign/login';
