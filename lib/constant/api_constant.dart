class APIConstant {
  static const BASE_URL = "https://it4895.herokuapp.com/it4895/";
  static const SIGN_UP = "signup";
  static const LOGIN = "login";
  static const LOGOUT = "logout";
  static const GET_VERIFY_CODE = "get_verify_code";
  static const CHECK_VERIFY_CODE = "check_verify_code";
  static const CHANGE_INFO_AFTER_SIGNUP = "change_info_after_signup";
  static const ADD_POST = "add_post";
  static const GET_POST = "get_post";
  static const EDIT_POST = "edit_post";
  static const DELETE_POST = "delete_post";
  static const REPORT_POST = "report_post";
  static const LIKE = "like";
  static const GET_COMMENT = "get_comment";
  static const SET_COMMENT = "set_comment";
  static const GET_LIST_POSTS = "get_list_posts";
  static const CHECK_NEW_ITEM = "Check_new_item";
  static const SEARCH = "Search";
  static const GET_SAVED_SEARCH = "get_saved_search";
  static const DEL_SAVED_SEARCH = "Del_saved_search";
  static const GET_REQUESTED_FRIENDS = "get_requested_friends";
  static const GET_LIST_VIDEO = "Get_list_video";
  static const GET_USER_FRIENDS = "get_user_friends";
  static const SET_ACCEPT_FRIEND = "Set_accept_friend";
  static const SET_REQUEST_FRIEND = "Set_request_friend";
  static const GET_LIST_SUGGESTED_FRIENDS = "Get_list_suggested_friends";
  static const CHANGE_PASSWORD = "Change_password";
  static const GET_PUSH_SETTINGS = "Get_push_settings";
  static const SET_PUSH_SETTINGS = "Set_push_settings";
  static const SET_BLOCK = "Set_block";
  static const CHECK_NEW_VERSION = "Check_new_version";
  static const GET_NOTIFICATION = "get_notification";
  static const SET_READ_NOTIFICATION = "Set_read_notification";
  static const SET_DEVTOKEN = "Set_devtoken";
  static const GET_USER_INFO = "get_user_info";
  static const SET_USER_INFO = "Set_user_info";
  static const GET_LIST_CONVERSATION = "Get_list_conversation";
  static const GET_CONVERSATION = "Get_conversation";
  static const SET_READ_MESSAGE = "Set_read_message";
  static const DELETE_MESSAGE = "Delete_message";
  static const DELETE_CONVERSATION = "Delete_conversation";
}

//view -> bloc (event)-> repo, -> service -> network -> data <======
// 3 layer trong kien truc lap trinh
