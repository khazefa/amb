<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * This function is used get menu access right
 * @param int $user_id
 * @return string
 */
if (!function_exists('get_menu_rights'))
{
    function get_menu_rights($user_id){
        $CI =& get_instance();
        $get_user_id = intval($user_id);
        $CI->db->select("modr_rights");
        $CI->db->from("module_rights");
        $CI->db->where("adminID", $user_id);
        $query = $CI->db->get();
        $result_array = $query->result_array();
        $rows = array();
        foreach($result_array as $row){
            array_push($rows, $row['modr_rights']);
        }
        return $rows;
    }
}

/**
 * This function is used get user main menu
 * @param int $user_id
 * @return string
 */
if (!function_exists('get_user_main_menus'))
{
    function get_user_main_menus($user_id){
        $CI =& get_instance();
        $get_user_id = intval($user_id);
        $rights = get_menu_rights($get_user_id);

        $CI->db->select("*");
        $CI->db->from("module");
        $CI->db->where_in("mod_id", $rights);
        $CI->db->where("mod_has_parent", 0);
        $CI->db->order_by("mod_sort", "ASC");
        $query = $CI->db->get();
        $results = $query->result_array();
        return $results;
    }
}

/**
 * This function is used get user child menu
 * @param int $parent_menu_id
 * @param int $user_id
 * @return string
 */
if (!function_exists('get_user_child_menus'))
{
    function get_user_child_menus($parent_menu_id, $user_id){
        $CI =& get_instance();
        $parent_menu_id = intval($parent_menu_id);
        $get_user_id = intval($user_id);
        $rights = get_menu_rights($get_user_id);

        $CI->db->select("*");
        $CI->db->from("module");
        $CI->db->where_in("mod_id", $rights);
        $CI->db->where("mod_has_parent", $parent_menu_id);
        $CI->db->order_by("mod_sort", "ASC");
        $query = $CI->db->get();
        $results = $query->result_array();
        return $results;
    }
}