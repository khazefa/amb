<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'backend/signin';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

//$route['default_controller'] = 'frontend/home';
//$route['404_override'] = 'errors/index';
$route['translate_uri_dashes'] = FALSE;
$route['/']['GET'] = function() {
	return 'frontend/home';
};
$route['read/(:any)']['GET'] = function($slug) {
	return 'frontend/home/read/' . $slug;
};
/*-----------------------------ADMIN PAGE---------------------------------------*/
//sign In
$route['backend']['get'] = function() {
	return 'backend/signin/index';
};
//do sign in
$route['backend']['post'] = function() {
	return 'backend/signin/check';
};
//forgot password
$route['backend/forgot-password']['POST'] = function() {
	return 'backend/signin/forgot_password';
};
//confirm reset password
//$route['backend/reset-password/(:any)/(:any)'] = 'backend/signin/reset_pass_confirm/$1/$2';

$route['backend/reset-password/(:any)/(:any)']['GET'] = function($activation, $email) {
	return 'backend/signin/reset_pass_confirm/' . $activation . '/' .$email;
};

//change password
$route['backend/change-password']['POST'] = function() {
	return 'backend/signin/change_new_password';
};

//logout
$route['backend/signout']['GET'] = function() {
	return 'backend/signin/signout';
};

//dashboard
$route['backend/dashboard']['GET'] = function() {
	return 'backend/dashboard/index';
};

// ===========================
//  Routing Backend Setting Modules
// ===========================
$route['backend/setting-module'] = 'backend/cmodule';
$route['backend/setting-module/add'] = 'backend/cmodule/add';
$route['backend/setting-module/insert'] = 'backend/cmodule/create';
$route['backend/setting-module/insert_rights'] = 'backend/cmodule/create_rights';
$route['backend/setting-module/edit/(:any)'] = 'backend/cmodule/edit/$1';
$route['backend/setting-module/modify'] = 'backend/cmodule/update';
$route['backend/setting-module/remove/(:any)'] = 'backend/cmodule/delete/$1';
$route['backend/setting-module/list/([a-zA-Z]+)'] = 'backend/cmodule/get_list/$1';
// ===========================
//  End Routing Backend Setting Modules
// ===========================

// ===========================
//  Routing Backend Admin CMS
// ===========================
$route['backend/admin-cms'] = 'backend/cadmincms';
$route['backend/admin-cms/add'] = 'backend/cadmincms/add';
$route['backend/admin-cms/insert'] = 'backend/cadmincms/create';
$route['backend/admin-cms/edit/(:any)'] = 'backend/cadmincms/edit/$1';
$route['backend/admin-cms/modify'] = 'backend/cadmincms/update';
$route['backend/admin-cms/remove/(:any)'] = 'backend/cadmincms/delete/$1';
$route['backend/admin-cms/list/([a-zA-Z]+)'] = 'backend/cadmincms/get_list/$1';
$route['backend/admin-cms/check/(:any)'] = 'backend/cadmincms/check/$1';
// ===========================
//  End Routing Backend Admin CMS
// ===========================

// ===========================
//  Routing Backend Admin Website
// ===========================
$route['backend/admin-website'] = 'backend/cadminwebsite';
$route['backend/admin-website/add'] = 'backend/cadminwebsite/add';
$route['backend/admin-website/insert'] = 'backend/cadminwebsite/create';
$route['backend/admin-website/edit/(:any)'] = 'backend/cadminwebsite/edit/$1';
$route['backend/admin-website/modify'] = 'backend/cadminwebsite/update';
$route['backend/admin-website/remove/(:any)'] = 'backend/cadminwebsite/delete/$1';
$route['backend/admin-website/list/([a-zA-Z]+)'] = 'backend/cadminwebsite/get_list/$1';
$route['backend/admin-website/check/(:any)'] = 'backend/cadminwebsite/check/$1';
// ===========================
//  End Routing Backend Admin Website
// ===========================

// ===========================
//  Routing Backend Kategori
// ===========================
$route['backend/kategori'] = 'backend/ckategori';
$route['backend/kategori/add'] = 'backend/ckategori/add';
$route['backend/kategori/insert'] = 'backend/ckategori/create';
$route['backend/kategori/edit/(:any)'] = 'backend/ckategori/edit/$1';
$route['backend/kategori/modify'] = 'backend/ckategori/update';
$route['backend/kategori/remove/(:any)'] = 'backend/ckategori/delete/$1';
$route['backend/kategori/list/([a-zA-Z]+)'] = 'backend/ckategori/get_list/$1';
// ===========================
//  End Routing Backend Kategori
// ===========================

// ===========================
//  Routing Backend Media
// ===========================
$route['backend/media'] = 'backend/cmedia';
$route['backend/media/add'] = 'backend/cmedia/add';
$route['backend/media/insert'] = 'backend/cmedia/create';
$route['backend/media/edit/(:any)'] = 'backend/cmedia/edit/$1';
$route['backend/media/modify'] = 'backend/cmedia/update';
$route['backend/media/remove/(:any)'] = 'backend/cmedia/delete/$1';
$route['backend/media/list/([a-zA-Z]+)'] = 'backend/cmedia/get_list/$1';
// ===========================
//  End Routing Backend Media
// ===========================

// ===========================
//  Routing Backend Wilayah
// ===========================
$route['backend/wilayah'] = 'backend/cwilayah';
$route['backend/wilayah/add'] = 'backend/cwilayah/add';
$route['backend/wilayah/insert'] = 'backend/cwilayah/create';
$route['backend/wilayah/edit/(:any)'] = 'backend/cwilayah/edit/$1';
$route['backend/wilayah/modify'] = 'backend/cwilayah/update';
$route['backend/wilayah/remove/(:any)'] = 'backend/cwilayah/delete/$1';
$route['backend/wilayah/list/([a-zA-Z]+)'] = 'backend/cwilayah/get_list/$1';
// ===========================
//  End Routing Backend Wilayah
// ===========================

// ===========================
//  Routing Backend Bidang
// ===========================
$route['backend/bidang'] = 'backend/cbidang';
$route['backend/bidang/add'] = 'backend/cbidang/add';
$route['backend/bidang/insert'] = 'backend/cbidang/create';
$route['backend/bidang/edit/(:any)'] = 'backend/cbidang/edit/$1';
$route['backend/bidang/modify'] = 'backend/cbidang/update';
$route['backend/bidang/remove/(:any)'] = 'backend/cbidang/delete/$1';
$route['backend/bidang/list/([a-zA-Z]+)'] = 'backend/cbidang/get_list/$1';
// ===========================
//  End Routing Backend Bidang
// ===========================

//erros -------------------------------------------------------
$route['errors/not_found']['GET'] = function() {
	return 'errors/index';
};



//old routes -------------------------------------------------------

//list posts
$route['backend/post']['GET'] = function() {
	return 'backend/post/index';
};
//create post
$route['backend/post/create_post']['GET'] = function() {
	return 'backend/post/create_post';
};
//save post
$route['backend/post/save_post']['POST'] = function() {
	return 'backend/post/savePost';
};
//publish post
$route['backend/post/publish']['POST'] = function() {
	return 'backend/post/publish';
};
// Set feautered
$route['backend/post/unPublish']['POST'] = function() {
	return 'backend/post/unPublish';
};
//edit post
$route['backend/post/edit/(:any)']['GET'] = function($article_id) {
	return 'backend/post/edit/' . $article_id;
};
// save_edit_post
$route['backend/post/save_edit_post/(:any)']['POST'] = function($article_id) {
	return 'backend/post/updatePost/' . $article_id;
};

