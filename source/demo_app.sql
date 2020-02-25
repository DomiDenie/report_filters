prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.10.04'
,p_release=>'19.2.0.00.18'
,p_default_workspace_id=>10102958384166532
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'PLUGINS'
);
end;
/
 
prompt APPLICATION 100 - Plugin repo
--
-- Application Export:
--   Application:     100
--   Name:            Plugin repo
--   Date and Time:   22:56 Tuesday February 25, 2020
--   Exported By:     PLUGINS
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                      4
--       Items:                    5
--       Processes:                5
--       Regions:                  6
--       Buttons:                  2
--       Dynamic Actions:          1
--     Shared Components:
--       Logic:
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              1
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                 9
--           Region:              16
--           Label:                7
--           List:                12
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              10
--         LOVs:                   1
--         Shortcuts:              1
--         Plug-ins:               2
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         19.2.0.00.18
--   Instance ID:     9502752269487287
--

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'PLUGINS')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Plugin repo')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'100')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'E28F4A622384D38CE140BFD1646C2359E7771A8FBD3949E7B1F9D35C5F3CF093'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2019.12.18.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(10120359639662643)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Plugin repo'
,p_app_builder_icon_name=>'app-icon.svg'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Plugin repo'
,p_last_updated_by=>'PLUGINS'
,p_last_upd_yyyymmddhh24miss=>'20200225225134'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>31
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(10121171607662654)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(10259480221662943)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(10262848430672476)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'report filters'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-filter'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(10249241105662861)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(10260979116662958)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(10261439573662959)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(10260979116662958)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(10261859019662960)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(10260979116662958)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B222076696577426F783D223020302036342036';
wwv_flow_api.g_varchar2_table(2) := '34223E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A75726C282372616469616C2D6772616469656E74293B7D2E636C732D327B6F7061636974793A302E313B7D2E636C732D332C2E636C732D347B66696C6C3A236666663B7D2E636C73';
wwv_flow_api.g_varchar2_table(3) := '2D337B6F7061636974793A302E363B7D3C2F7374796C653E3C72616469616C4772616469656E742069643D2272616469616C2D6772616469656E74222063783D223332222063793D222E30352220723D22363422206772616469656E74556E6974733D22';
wwv_flow_api.g_varchar2_table(4) := '7573657253706163654F6E557365223E3C73746F70206F66667365743D2230222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D22302E3135222F3E3C73746F70206F66667365743D222E35222073746F702D636F6C6F72';
wwv_flow_api.g_varchar2_table(5) := '3D2223666666222073746F702D6F7061636974793D22302E31222F3E3C73746F70206F66667365743D2231222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D2230222F3E3C2F72616469616C4772616469656E743E3C73';
wwv_flow_api.g_varchar2_table(6) := '796D626F6C2069643D22616D6269656E742D6C69676874696E67222076696577426F783D22302030203634203634223E3C7061746820636C6173733D22636C732D312220643D224D302030683634763634682D36347A222F3E3C2F73796D626F6C3E3C2F';
wwv_flow_api.g_varchar2_table(7) := '646566733E3C7469746C653E6261722D6C696E652D63686172743C2F7469746C653E3C726563742077696474683D22363422206865696768743D223634222066696C6C3D2223354136384144222F3E3C672069643D2269636F6E73223E3C706174682063';
wwv_flow_api.g_varchar2_table(8) := '6C6173733D22636C732D322220643D224D313920343668357631682D357A4D323620343668357631682D357A4D333320343668357631682D357A4D343020343668357631682D357A222F3E3C7061746820636C6173733D22636C732D332220643D224D31';
wwv_flow_api.g_varchar2_table(9) := '3920333868357638682D357A4D32362033326835763134682D357A4D33332033326835763134682D357A4D34302032376835763139682D357A222F3E3C6720636C6173733D22636C732D32223E3C636972636C652063783D2234322E35222063793D2232';
wwv_flow_api.g_varchar2_table(10) := '302E352220723D22312E35222F3E3C636972636C652063783D2233352E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D2232382E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D22';
wwv_flow_api.g_varchar2_table(11) := '32312E35222063793D2233312E352220723D22312E35222F3E3C7061746820643D224D32312E3832352033312E3837396C2D2E36352D2E37353820372E31342D362E31323168372E3032356C362E3836392D342E3930372E3538322E3831342D372E3133';
wwv_flow_api.g_varchar2_table(12) := '3120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C636972636C6520636C6173733D22636C732D34222063783D2234322E35222063793D2231392E352220723D22312E35222F3E3C636972636C6520636C6173733D22';
wwv_flow_api.g_varchar2_table(13) := '636C732D34222063783D2233352E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C6173733D22636C732D34222063783D2232382E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C617373';
wwv_flow_api.g_varchar2_table(14) := '3D22636C732D34222063783D2232312E35222063793D2233302E352220723D22312E35222F3E3C7061746820636C6173733D22636C732D342220643D224D32312E3832352033302E3837396C2D2E36352D2E37353820372E31342D362E31323168372E30';
wwv_flow_api.g_varchar2_table(15) := '32356C362E3836392D342E3930372E3538322E3831342D372E31333120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C7573652077696474683D22363422206865696768743D2236342220786C696E6B3A687265663D';
wwv_flow_api.g_varchar2_table(16) := '2223616D6269656E742D6C69676874696E67222069643D226C69676874696E67222F3E3C2F7376673E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(10250532585662888)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20233541363841443B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(10250816547662891)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(10118243687662635)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(10118559529662639)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(10118861280662639)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(10119115247662640)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(10119449052662640)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(10120022448662641)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(10252159152662891)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(10254607601662920)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(10254607601662920)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(10255069096662923)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(10252762061662894)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(10120651808662647)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(10120878509662648)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(10121465794662661)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10121769360662670)
,p_page_template_id=>wwv_flow_api.id(10121465794662661)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10122027441662672)
,p_page_template_id=>wwv_flow_api.id(10121465794662661)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10122351856662672)
,p_page_template_id=>wwv_flow_api.id(10121465794662661)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10122653588662673)
,p_page_template_id=>wwv_flow_api.id(10121465794662661)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10122982863662673)
,p_page_template_id=>wwv_flow_api.id(10121465794662661)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10123214281662673)
,p_page_template_id=>wwv_flow_api.id(10121465794662661)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10123556988662673)
,p_page_template_id=>wwv_flow_api.id(10121465794662661)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10123821878662673)
,p_page_template_id=>wwv_flow_api.id(10121465794662661)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(10124204483662685)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10124517049662686)
,p_page_template_id=>wwv_flow_api.id(10124204483662685)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10124865214662686)
,p_page_template_id=>wwv_flow_api.id(10124204483662685)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10125192830662686)
,p_page_template_id=>wwv_flow_api.id(10124204483662685)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10125480541662686)
,p_page_template_id=>wwv_flow_api.id(10124204483662685)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10125732231662686)
,p_page_template_id=>wwv_flow_api.id(10124204483662685)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10126037297662687)
,p_page_template_id=>wwv_flow_api.id(10124204483662685)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10126302279662687)
,p_page_template_id=>wwv_flow_api.id(10124204483662685)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10126662378662688)
,p_page_template_id=>wwv_flow_api.id(10124204483662685)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10126998470662688)
,p_page_template_id=>wwv_flow_api.id(10124204483662685)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(10127363143662688)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container" role="main">#BODY#</div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10127616027662689)
,p_page_template_id=>wwv_flow_api.id(10127363143662688)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10127964569662689)
,p_page_template_id=>wwv_flow_api.id(10127363143662688)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(10128140652662689)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10128473056662690)
,p_page_template_id=>wwv_flow_api.id(10128140652662689)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10128784243662690)
,p_page_template_id=>wwv_flow_api.id(10128140652662689)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10129087851662691)
,p_page_template_id=>wwv_flow_api.id(10128140652662689)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10129367095662691)
,p_page_template_id=>wwv_flow_api.id(10128140652662689)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10129662477662691)
,p_page_template_id=>wwv_flow_api.id(10128140652662689)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10129949043662691)
,p_page_template_id=>wwv_flow_api.id(10128140652662689)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10130240421662691)
,p_page_template_id=>wwv_flow_api.id(10128140652662689)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10130522630662691)
,p_page_template_id=>wwv_flow_api.id(10128140652662689)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10130873741662692)
,p_page_template_id=>wwv_flow_api.id(10128140652662689)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(10131236093662692)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10131546452662692)
,p_page_template_id=>wwv_flow_api.id(10131236093662692)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10131825868662693)
,p_page_template_id=>wwv_flow_api.id(10131236093662692)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10132180443662693)
,p_page_template_id=>wwv_flow_api.id(10131236093662692)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10132489536662693)
,p_page_template_id=>wwv_flow_api.id(10131236093662692)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10132734898662693)
,p_page_template_id=>wwv_flow_api.id(10131236093662692)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10133091391662693)
,p_page_template_id=>wwv_flow_api.id(10131236093662692)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10133399401662693)
,p_page_template_id=>wwv_flow_api.id(10131236093662692)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10133662532662694)
,p_page_template_id=>wwv_flow_api.id(10131236093662692)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(10134011198662694)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        #BODY#',
'      </div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10134332386662695)
,p_page_template_id=>wwv_flow_api.id(10134011198662694)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10134678303662695)
,p_page_template_id=>wwv_flow_api.id(10134011198662694)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10134967279662695)
,p_page_template_id=>wwv_flow_api.id(10134011198662694)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(10135577059662696)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        #BODY#',
'      </div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10135891100662696)
,p_page_template_id=>wwv_flow_api.id(10135577059662696)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10136161889662697)
,p_page_template_id=>wwv_flow_api.id(10135577059662696)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10136493806662697)
,p_page_template_id=>wwv_flow_api.id(10135577059662696)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(10137037574662697)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10137334939662698)
,p_page_template_id=>wwv_flow_api.id(10137037574662697)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10137644188662698)
,p_page_template_id=>wwv_flow_api.id(10137037574662697)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10137937755662698)
,p_page_template_id=>wwv_flow_api.id(10137037574662697)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10138289714662698)
,p_page_template_id=>wwv_flow_api.id(10137037574662697)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10138529953662698)
,p_page_template_id=>wwv_flow_api.id(10137037574662697)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10138859263662699)
,p_page_template_id=>wwv_flow_api.id(10137037574662697)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10139120813662699)
,p_page_template_id=>wwv_flow_api.id(10137037574662697)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(10139520283662699)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10139861153662699)
,p_page_template_id=>wwv_flow_api.id(10139520283662699)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10140174109662700)
,p_page_template_id=>wwv_flow_api.id(10139520283662699)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10140490475662700)
,p_page_template_id=>wwv_flow_api.id(10139520283662699)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10140700656662700)
,p_page_template_id=>wwv_flow_api.id(10139520283662699)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10141094859662703)
,p_page_template_id=>wwv_flow_api.id(10139520283662699)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10141342143662705)
,p_page_template_id=>wwv_flow_api.id(10139520283662699)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(10141658008662706)
,p_page_template_id=>wwv_flow_api.id(10139520283662699)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(10226391942662805)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(10227018812662808)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(10227166997662808)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10142055502662711)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10142386021662717)
,p_plug_template_id=>wwv_flow_api.id(10142055502662711)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10145751083662723)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10145984659662723)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10146277968662723)
,p_plug_template_id=>wwv_flow_api.id(10145984659662723)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10146545902662724)
,p_plug_template_id=>wwv_flow_api.id(10145984659662723)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10146702799662724)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10147096628662724)
,p_plug_template_id=>wwv_flow_api.id(10146702799662724)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10147377010662724)
,p_plug_template_id=>wwv_flow_api.id(10146702799662724)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10148961647662725)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10149287399662725)
,p_plug_template_id=>wwv_flow_api.id(10148961647662725)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10149557282662726)
,p_plug_template_id=>wwv_flow_api.id(10148961647662725)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10156190438662732)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls"><button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10156418483662732)
,p_plug_template_id=>wwv_flow_api.id(10156190438662732)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10156791906662732)
,p_plug_template_id=>wwv_flow_api.id(10156190438662732)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10161500875662739)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h1 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10163588455662744)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10163864382662744)
,p_plug_template_id=>wwv_flow_api.id(10163588455662744)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10165601920662745)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10165931168662745)
,p_plug_template_id=>wwv_flow_api.id(10165601920662745)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10167941863662746)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10168280442662746)
,p_plug_template_id=>wwv_flow_api.id(10167941863662746)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10169890642662747)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10170420045662748)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10170713112662748)
,p_plug_template_id=>wwv_flow_api.id(10170420045662748)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10170913610662748)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10171279276662748)
,p_plug_template_id=>wwv_flow_api.id(10170913610662748)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10171549455662748)
,p_plug_template_id=>wwv_flow_api.id(10170913610662748)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10177711216662752)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10178063438662753)
,p_plug_template_id=>wwv_flow_api.id(10177711216662752)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10178346783662753)
,p_plug_template_id=>wwv_flow_api.id(10177711216662752)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10180358091662754)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10181399915662754)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(10181658513662754)
,p_plug_template_id=>wwv_flow_api.id(10181399915662754)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10203451667662778)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10207492073662786)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10213099526662789)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10215840377662791)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10216039898662791)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_preset_template_options=>'t-TreeNav--styleA'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10217052173662793)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10218089312662793)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10219646497662795)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10220643376662795)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10222224382662796)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></'
||'div></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>',
''))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10223606906662796)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide"), iconType: ''fa''});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10224013643662797)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10182646687662756)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10182830438662759)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10186802468662763)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10188275175662764)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10191289383662766)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(10191289383662766)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10193874624662768)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10195861644662769)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10197624017662770)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10198030419662770)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10203297155662776)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(10225623550662799)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(10225772662662802)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(10225845494662802)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(10225946505662802)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(10226008846662802)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(10226139877662803)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(10226250596662803)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(10228456448662810)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(10228611898662824)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(10228534296662813)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(10229845982662839)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(10139520283662699)
,p_default_dialog_template=>wwv_flow_api.id(10135577059662696)
,p_error_template=>wwv_flow_api.id(10127363143662688)
,p_printer_friendly_template=>wwv_flow_api.id(10139520283662699)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(10127363143662688)
,p_default_button_template=>wwv_flow_api.id(10227018812662808)
,p_default_region_template=>wwv_flow_api.id(10170913610662748)
,p_default_chart_template=>wwv_flow_api.id(10170913610662748)
,p_default_form_template=>wwv_flow_api.id(10170913610662748)
,p_default_reportr_template=>wwv_flow_api.id(10170913610662748)
,p_default_tabform_template=>wwv_flow_api.id(10170913610662748)
,p_default_wizard_template=>wwv_flow_api.id(10170913610662748)
,p_default_menur_template=>wwv_flow_api.id(10180358091662754)
,p_default_listr_template=>wwv_flow_api.id(10170913610662748)
,p_default_irr_template=>wwv_flow_api.id(10169890642662747)
,p_default_report_template=>wwv_flow_api.id(10191289383662766)
,p_default_label_template=>wwv_flow_api.id(10225946505662802)
,p_default_menu_template=>wwv_flow_api.id(10228456448662810)
,p_default_calendar_template=>wwv_flow_api.id(10228534296662813)
,p_default_list_template=>wwv_flow_api.id(10218089312662793)
,p_default_nav_list_template=>wwv_flow_api.id(10217052173662793)
,p_default_top_nav_list_temp=>wwv_flow_api.id(10217052173662793)
,p_default_side_nav_list_temp=>wwv_flow_api.id(10216039898662791)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(10146702799662724)
,p_default_dialogr_template=>wwv_flow_api.id(10145751083662723)
,p_default_option_label=>wwv_flow_api.id(10225946505662802)
,p_default_required_label=>wwv_flow_api.id(10226250596662803)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(10215840377662791)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.3/')
,p_files_version=>62
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(10228840478662826)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(10229007716662827)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(10229251595662827)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(10229444055662827)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(10229695751662828)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10142849749662721)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10143296990662722)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10143890055662722)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10144275696662722)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10147644411662724)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10148000528662724)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10149833708662726)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10150642793662727)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10151803177662727)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10153074821662728)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10153454002662728)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10155461381662731)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10158859885662737)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10159226359662737)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10160032102662737)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10162021989662739)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10162870400662740)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10164176262662744)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10164747801662745)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10166648087662746)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10178681740662753)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10179020964662753)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10179845578662753)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10181976149662755)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10183156313662759)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10183572088662760)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10185569754662763)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10187145093662764)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10187572062662764)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10189921937662765)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10191501854662767)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10192129057662767)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10192526801662767)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10194146024662768)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10198506534662770)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10200303390662771)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10201184216662772)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10203717344662783)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10204927875662785)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10206154381662785)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10207967030662786)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10209993934662787)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10210535610662787)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10211974033662788)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10214750066662790)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10219121536662794)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10220949875662795)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10221577223662795)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10222590248662796)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10226512421662808)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10227582610662808)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10230092097662845)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10230405276662846)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10232089514662847)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10232438097662847)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10234042268662848)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10234408166662848)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10236012755662849)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10236482252662849)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10238084722662850)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10238419804662850)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10238851173662850)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10239202732662850)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10239670073662851)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10240076441662851)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10240474644662851)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10241891540662852)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10243211495662853)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10244265944662853)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10244665339662853)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10245060444662854)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10245438930662854)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10246082761662854)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10246622804662854)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10247024795662855)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10247456451662855)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10247895312662855)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(10248640500662856)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10124163412662682)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(10121465794662661)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10127218195662688)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(10124204483662685)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10131149422662692)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(10128140652662689)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10133957554662694)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(10131236093662692)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10135284690662696)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(10134011198662694)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10135448744662696)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(10134011198662694)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10136732454662697)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(10135577059662696)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10136960097662697)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(10135577059662696)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10139476493662699)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(10137037574662697)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10141942637662708)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(10139520283662699)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10142624724662717)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(10142055502662711)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10143062941662721)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10142055502662711)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(10142849749662721)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10143430802662722)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10142055502662711)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(10143296990662722)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10143649215662722)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10142055502662711)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(10143296990662722)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10144080435662722)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10142055502662711)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(10143890055662722)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10144475822662723)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10142055502662711)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(10144275696662722)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10144675071662723)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10142055502662711)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(10142849749662721)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10144882708662723)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10142055502662711)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(10143890055662722)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10145013381662723)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10142055502662711)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(10142849749662721)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10145231138662723)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10142055502662711)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(10143890055662722)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10145409178662723)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10142055502662711)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(10142849749662721)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10145676130662723)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10142055502662711)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(10144275696662722)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10147817701662724)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(10146702799662724)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(10147644411662724)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10148264591662724)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(10146702799662724)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(10148000528662724)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10148452228662725)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(10146702799662724)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(10147644411662724)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10148603566662725)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(10146702799662724)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(10148000528662724)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10148874630662725)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10146702799662724)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10150049092662726)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(10149833708662726)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10150246610662726)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(10149833708662726)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10150470423662726)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(10149833708662726)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10150812144662727)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(10150642793662727)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10151020108662727)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(10150642793662727)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10151262871662727)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(10150642793662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10151407857662727)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(10149833708662726)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10151603004662727)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(10150642793662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10152097042662727)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10152241893662727)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10152474143662727)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10152695672662728)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10152829011662728)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10153269914662728)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(10153074821662728)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10153655330662728)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(10153454002662728)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10153895721662729)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(10153074821662728)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10154029485662731)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10154251837662731)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10154447674662731)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10154690780662731)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(10147644411662724)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10154822710662731)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10155034820662731)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(10153454002662728)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10155233729662731)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10155636079662731)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(10155461381662731)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10155808056662732)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(10155461381662731)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10156011959662732)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10148961647662725)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(10147644411662724)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10157072988662732)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(10150642793662727)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10157258429662732)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(10150642793662727)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10157442064662732)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(10150642793662727)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10157669637662733)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(10150642793662727)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10157823232662733)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10158096791662733)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10158263024662736)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10158475077662737)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10158619719662737)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10159005995662737)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(10158859885662737)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10159487928662737)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_api.id(10159226359662737)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10159630312662737)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(10158859885662737)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10159801749662737)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(10153454002662728)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10160250215662737)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_api.id(10160032102662737)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10160438090662738)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10160631066662739)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(10147644411662724)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10160804918662739)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10161042053662739)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(10147644411662724)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10161223465662739)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(10153454002662728)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10161438942662739)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10156190438662732)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(10147644411662724)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10161880494662739)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10161500875662739)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10162213405662739)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10161500875662739)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(10162021989662739)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10162468093662739)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10161500875662739)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(10162021989662739)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10162609969662740)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10161500875662739)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(10162021989662739)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10163012195662740)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10161500875662739)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(10162870400662740)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10163275401662741)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10161500875662739)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(10162870400662740)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10163461433662742)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10161500875662739)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10164353612662744)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10163588455662744)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(10164176262662744)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10164504317662744)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10163588455662744)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(10147644411662724)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10164901427662745)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10163588455662744)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_api.id(10164747801662745)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10165126907662745)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10163588455662744)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_api.id(10164747801662745)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10165311695662745)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10163588455662744)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10165520696662745)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10163588455662744)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(10147644411662724)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10166224075662745)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(10165601920662745)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10166438359662746)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10165601920662745)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10166881687662746)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10165601920662745)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(10166648087662746)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10167046140662746)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10165601920662745)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(10166648087662746)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10167253125662746)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10165601920662745)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10167495435662746)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(10165601920662745)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10167604097662746)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10165601920662745)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10167810011662746)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10165601920662745)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(10166648087662746)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10168599500662747)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(10167941863662746)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10168762304662747)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10167941863662746)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(10166648087662746)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10168938393662747)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10167941863662746)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(10166648087662746)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10169119846662747)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(10167941863662746)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_api.id(10166648087662746)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10169357108662747)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10167941863662746)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10169539310662747)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10167941863662746)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10169707821662747)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10167941863662746)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(10166648087662746)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10170160202662748)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10169890642662747)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10170302534662748)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10169890642662747)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10171859678662749)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(10150642793662727)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10172051208662749)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(10150642793662727)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10172228464662749)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(10150642793662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10172430807662749)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(10150642793662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10172626464662749)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10172853754662749)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10173021732662749)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10173276909662749)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10173425911662749)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10173669678662749)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10173879904662750)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10174016928662750)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10174269821662750)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10174442838662750)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10174661619662750)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10174808317662750)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10175073074662750)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10175222087662750)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10175481287662750)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(10151803177662727)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10175655900662750)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(10153074821662728)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10175837866662751)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(10153454002662728)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10176036608662751)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(10153074821662728)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10176291351662751)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10176447500662751)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(10147644411662724)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10176610096662752)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(10147644411662724)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10176871816662752)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(10153454002662728)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10177062851662752)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10177232758662752)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10177459494662752)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(10147644411662724)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10177646823662752)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10170913610662748)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(10147644411662724)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10178852453662753)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10177711216662752)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(10178681740662753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10179281070662753)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10177711216662752)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(10179020964662753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10179489545662753)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10177711216662752)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10179648529662753)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10177711216662752)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(10179020964662753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10180092408662754)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10177711216662752)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(10179845578662753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10180218877662754)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10177711216662752)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(10179845578662753)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10180645070662754)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(10180358091662754)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(10162021989662739)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10180802266662754)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(10180358091662754)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10181045603662754)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(10180358091662754)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(10162021989662739)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10181231848662754)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10180358091662754)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10182103920662755)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10181399915662754)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(10181976149662755)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10182313097662755)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10181399915662754)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(10181976149662755)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10182598172662755)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10181399915662754)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10183338106662760)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(10182830438662759)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(10183156313662759)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10183724924662760)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10182830438662759)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10183908571662760)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10182830438662759)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(10183156313662759)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10184139021662760)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10182830438662759)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10184395358662760)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10182830438662759)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(10183156313662759)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10184530863662760)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(10182830438662759)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10184711831662760)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(10182830438662759)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10184986156662762)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10182830438662759)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(10183156313662759)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10185128935662763)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(10182830438662759)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(10183156313662759)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10185377073662763)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10182830438662759)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10185735075662763)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10182830438662759)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(10185569754662763)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10185981090662763)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(10182830438662759)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10186191589662763)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(10182830438662759)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10186340422662763)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(10182830438662759)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10186546117662763)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10182830438662759)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(10185569754662763)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10186794823662763)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10182830438662759)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10187382276662764)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10186802468662763)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(10187145093662764)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10187792722662764)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10186802468662763)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_api.id(10187572062662764)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10187999750662764)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10186802468662763)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_api.id(10187572062662764)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10188161181662764)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10186802468662763)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(10187145093662764)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10188520976662765)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10188275175662764)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10188780754662765)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10188275175662764)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10188948387662765)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10188275175662764)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10189149881662765)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(10188275175662764)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10189310215662765)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(10188275175662764)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10189542913662765)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10188275175662764)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(10187572062662764)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10189712351662765)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10188275175662764)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(10187572062662764)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10190188938662766)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10188275175662764)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(10189921937662765)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10190348792662766)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10188275175662764)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10190522147662766)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10188275175662764)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10190724192662766)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10188275175662764)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10190975934662766)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(10188275175662764)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10191142975662766)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(10188275175662764)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10191748020662767)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10191289383662766)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(10191501854662767)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10191917766662767)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10191289383662766)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(10191501854662767)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10192353463662767)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10191289383662766)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(10192129057662767)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10192733424662767)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10191289383662766)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(10192526801662767)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10192965895662767)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10191289383662766)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(10192526801662767)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10193166690662767)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(10191289383662766)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(10192526801662767)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10193394460662767)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10191289383662766)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(10192129057662767)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10193504806662767)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10191289383662766)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10193776237662768)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10191289383662766)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(10192526801662767)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10194316956662768)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10193874624662768)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(10194146024662768)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10194516252662768)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10193874624662768)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(10194146024662768)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10194773315662768)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10193874624662768)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(10194146024662768)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10194961393662768)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10193874624662768)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10195169326662768)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10193874624662768)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10195355299662768)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(10193874624662768)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(10194146024662768)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10195556284662768)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(10193874624662768)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(10194146024662768)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10195736114662769)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(10193874624662768)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(10194146024662768)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10196111052662769)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10195861644662769)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(10194146024662768)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10196331708662769)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10195861644662769)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(10194146024662768)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10196579506662769)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10195861644662769)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(10194146024662768)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10196717113662769)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10195861644662769)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10196995899662769)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10195861644662769)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10197105644662770)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(10195861644662769)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(10194146024662768)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10197319339662770)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(10195861644662769)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(10194146024662768)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10197514764662770)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(10195861644662769)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(10194146024662768)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10197967652662770)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(10197624017662770)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(10185569754662763)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10198366792662770)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10198741563662770)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(10198506534662770)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10198969635662771)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10199174570662771)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(10198506534662770)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10199394491662771)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10199579747662771)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(10198506534662770)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10199779011662771)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10199929427662771)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(10185569754662763)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10200147767662771)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(10185569754662763)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10200585967662771)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(10200303390662771)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10200777162662771)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(10200303390662771)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10200947491662772)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(10185569754662763)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10201360548662772)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(10201184216662772)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10201564781662772)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(10201184216662772)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10201771987662772)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10201903892662772)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(10185569754662763)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10202118914662772)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10202373843662772)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(10198506534662770)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10202562642662773)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(10187572062662764)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10202778349662773)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(10187572062662764)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10202945589662773)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(10183572088662760)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10203127684662773)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10198030419662770)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10203997058662784)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10203451667662778)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10204184843662784)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10203451667662778)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10204385813662784)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(10203451667662778)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10204546835662784)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(10203451667662778)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10204740559662784)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10203451667662778)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10205196713662785)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10203451667662778)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(10204927875662785)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10205321810662785)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(10203451667662778)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10205510785662785)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(10203451667662778)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10205745681662785)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(10203451667662778)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10205989343662785)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10203451667662778)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(10204927875662785)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10206392116662785)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10203451667662778)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(10206154381662785)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10206525566662785)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10203451667662778)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(10206154381662785)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10206755948662785)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10203451667662778)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(10206154381662785)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10206926116662786)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10203451667662778)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10207157804662786)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(10203451667662778)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(10206154381662785)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10207327408662786)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(10203451667662778)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(10206154381662785)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10207753564662786)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10208135649662786)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(10207967030662786)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10208358996662786)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10208548797662786)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(10207967030662786)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10208749263662786)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10208998263662787)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(10207967030662786)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10209199627662787)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10209346193662787)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(10204927875662785)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10209553070662787)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(10204927875662785)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10209746245662787)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10210143238662787)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(10209993934662787)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10210365746662787)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(10204927875662785)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10210703074662787)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(10210535610662787)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10210906037662788)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(10210535610662787)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10211126007662788)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10211327365662788)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(10204927875662785)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10211519740662788)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10211717619662788)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(10207967030662786)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10212191939662788)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(10211974033662788)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10212379334662788)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(10211974033662788)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10212562445662788)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(10209993934662787)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10212758082662789)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10212900575662789)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10207492073662786)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10213307341662789)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10213099526662789)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10213575757662789)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10213099526662789)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10213753423662789)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10213099526662789)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10213960758662789)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(10213099526662789)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10214104589662789)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(10213099526662789)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10214324557662789)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10213099526662789)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(10211974033662788)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10214546836662790)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10213099526662789)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(10211974033662788)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10214921263662790)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10213099526662789)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(10214750066662790)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10215155956662790)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10213099526662789)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10215357356662790)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10213099526662789)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10215541753662791)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10213099526662789)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10215731257662791)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(10213099526662789)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10216321571662792)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10216039898662791)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10216545437662792)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10216039898662791)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_api.id(10204927875662785)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10216750768662792)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10216039898662791)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_api.id(10204927875662785)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10216943496662792)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10216039898662791)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_api.id(10204927875662785)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10217336200662793)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(10217052173662793)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10217559722662793)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(10217052173662793)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10217797737662793)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(10217052173662793)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10217948490662793)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(10217052173662793)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10218375457662794)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10218089312662793)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(10204927875662785)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10218537400662794)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10218089312662793)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10218709861662794)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10218089312662793)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10218902748662794)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10218089312662793)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10219390479662794)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10218089312662793)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(10219121536662794)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10219535220662794)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10218089312662793)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(10219121536662794)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10219935793662795)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(10219646497662795)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10220114295662795)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10219646497662795)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10220314146662795)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10219646497662795)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10220514935662795)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10219646497662795)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10221194986662795)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(10220643376662795)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(10220949875662795)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10221307715662795)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(10220643376662795)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(10220949875662795)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10221756203662796)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10220643376662795)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(10221577223662795)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10221928591662796)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10220643376662795)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(10221577223662795)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10222195725662796)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10220643376662795)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(10221577223662795)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10222745464662796)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10222224382662796)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(10222590248662796)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10222908187662796)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10222224382662796)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(10222590248662796)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10223125941662796)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10222224382662796)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(10222590248662796)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10223335112662796)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10222224382662796)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10223518850662796)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(10222224382662796)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10223954249662797)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10223606906662796)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10224303346662797)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10224013643662797)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(10210535610662787)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10224528126662797)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(10224013643662797)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(10203717344662783)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10224764116662797)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10224013643662797)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(10210535610662787)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10224974609662797)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10224013643662797)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(10214750066662790)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10225174065662797)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10224013643662797)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(10204927875662785)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10225320278662797)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10224013643662797)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(10204927875662785)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10225561556662798)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(10224013643662797)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(10214750066662790)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10226758186662808)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(10226391942662805)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(10226512421662808)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10226956251662808)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(10226391942662805)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(10226512421662808)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10227381558662808)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(10227166997662808)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10227715425662808)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(10227166997662808)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(10227582610662808)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10227924100662809)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(10227166997662808)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(10226512421662808)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10228134883662809)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(10227166997662808)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(10227582610662808)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10228303036662809)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(10227166997662808)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(10226512421662808)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10230246630662846)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(10230092097662845)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10230615533662846)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(10230405276662846)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10230804486662846)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(10230092097662845)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10231082149662846)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(10230405276662846)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10231235051662847)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(10230092097662845)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10231419832662847)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(10230405276662846)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10231620504662847)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(10230092097662845)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10231845798662847)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(10230405276662846)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10232243349662847)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(10232089514662847)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10232667313662847)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(10232438097662847)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10232877214662847)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(10232089514662847)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10233025449662847)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(10232438097662847)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10233225859662848)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(10232089514662847)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10233406285662848)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(10232438097662847)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10233638528662848)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(10232089514662847)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10233886501662848)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(10232438097662847)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10234289523662848)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(10234042268662848)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10234634479662848)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(10234408166662848)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10234868679662848)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(10234042268662848)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10235017802662848)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(10234408166662848)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10235219470662849)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(10234042268662848)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10235425801662849)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(10234408166662848)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10235600913662849)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(10234042268662848)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10235830515662849)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(10234408166662848)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10236289589662849)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(10236012755662849)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10236644812662849)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(10236482252662849)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10236882752662849)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(10236012755662849)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10237064706662849)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(10236482252662849)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10237230529662849)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(10236012755662849)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10237410978662850)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(10236482252662849)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10237696072662850)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(10236012755662849)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10237832079662850)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(10236482252662849)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10238219688662850)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(10238084722662850)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10238649809662850)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(10238419804662850)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10239019785662850)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(10238851173662850)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10239424831662851)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(10239202732662850)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10239841011662851)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(10239670073662851)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10240270468662851)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(10240076441662851)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10240695904662851)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(10240474644662851)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10240863289662852)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(10240474644662851)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10241095092662852)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(10238419804662850)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10241254020662852)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(10238851173662850)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10241452089662852)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(10239202732662850)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10241696256662852)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(10239670073662851)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10242029165662852)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(10241891540662852)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10242229085662852)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(10241891540662852)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10242413728662852)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(10241891540662852)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10242611709662853)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(10238084722662850)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10242852918662853)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(10240474644662851)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10243074394662853)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(10240076441662851)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10243404207662853)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(10243211495662853)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10243632038662853)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(10238084722662850)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10243835102662853)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(10240076441662851)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10244068187662853)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(10238084722662850)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10244413849662853)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(10244265944662853)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10244851173662854)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(10244665339662853)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10245293340662854)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(10245060444662854)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10245699081662854)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(10245438930662854)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10245812490662854)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(10245438930662854)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10246258482662854)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(10246082761662854)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10246494541662854)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(10244665339662853)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10246836480662855)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(10246622804662854)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10247203840662855)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(10247024795662855)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10247647942662855)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(10247456451662855)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10248091551662856)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(10247895312662855)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10248281449662856)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10248495159662856)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(10246622804662854)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10248889835662856)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(10248640500662856)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(10252554981662893)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(10120359639662643)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/dynamic_action/deniedo_report_filters
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(11105038331496505)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'DENIEDO.REPORT_FILTERS'
,p_display_name=>'report filters'
,p_category=>'COMPONENT'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','DENIEDO.REPORT_FILTERS'),'')
,p_api_version=>2
,p_render_function=>'report_filters.render_filters'
,p_ajax_function=>'report_filters.ajax_filters'
,p_standard_attributes=>'REGION:REQUIRED:ONLOAD'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'v2.0.0'
,p_about_url=>'https://rxzwovgxaqhm6at-dbdomi.adb.eu-frankfurt-1.oraclecloudapps.com/ords/f?p=100:2'
,p_files_version=>15
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11911532230458607)
,p_plugin_id=>wwv_flow_api.id(11105038331496505)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Filter items'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The settings for using this plugin should be entered following the example below:<br/>',
'<br/>',
'[',
'  { "operator": "EQ",',
'    "item": "P1000_ITEM1",',
'    "column": "COLUMN1"',
'  },',
'  { "operator": "LIKE",',
'    "item": "P1000_ITEM2",',
'    "column": "COLUMN2"',
'  }',
']',
'<br/>',
'The following operators can be used',
'<br/>',
'',
'<ul>',
'  <li>LIKE - SQL like operator</li>',
'  <li>NLIKE - Not like</li>',
'  <li>LT - Less than</li>',
'  <li>GT - Greater than</li>',
'  <li>EQ - Equals to</li>',
'  <li>NEQ - Not equals</li>',
'</ul>'))
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A2A2A2A2A2F202866756E6374696F6E286D6F64756C657329207B202F2F207765627061636B426F6F7473747261700A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F74446973706F73654368756E6B286368756E6B496429207B0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(2) := '2A2A2A2F20090964656C65746520696E7374616C6C65644368756E6B735B6368756E6B49645D3B0A2F2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F200976617220706172656E74486F7455706461746543616C6C6261636B203D2077696E646F775B22';
wwv_flow_api.g_varchar2_table(3) := '7765627061636B486F74557064617465225D3B0A2F2A2A2A2A2A2A2F200977696E646F775B227765627061636B486F74557064617465225D203D202F2F2065736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D756E757365642D766172';
wwv_flow_api.g_varchar2_table(4) := '730A2F2A2A2A2A2A2A2F200966756E6374696F6E207765627061636B486F7455706461746543616C6C6261636B286368756E6B49642C206D6F72654D6F64756C657329207B0A2F2A2A2A2A2A2A2F200909686F744164645570646174654368756E6B2863';
wwv_flow_api.g_varchar2_table(5) := '68756E6B49642C206D6F72654D6F64756C6573293B0A2F2A2A2A2A2A2A2F20090969662028706172656E74486F7455706461746543616C6C6261636B2920706172656E74486F7455706461746543616C6C6261636B286368756E6B49642C206D6F72654D';
wwv_flow_api.g_varchar2_table(6) := '6F64756C6573293B0A2F2A2A2A2A2A2A2F20097D203B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F2065736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D756E757365642D766172730A2F2A2A2A2A2A2A2F200966756E6374';
wwv_flow_api.g_varchar2_table(7) := '696F6E20686F74446F776E6C6F61645570646174654368756E6B286368756E6B496429207B0A2F2A2A2A2A2A2A2F20090976617220736372697074203D20646F63756D656E742E637265617465456C656D656E74282273637269707422293B0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(8) := '2A2A2A2F2009097363726970742E63686172736574203D20227574662D38223B0A2F2A2A2A2A2A2A2F2009097363726970742E737263203D205F5F7765627061636B5F726571756972655F5F2E70202B202222202B206368756E6B4964202B20222E2220';
wwv_flow_api.g_varchar2_table(9) := '2B20686F7443757272656E7448617368202B20222E686F742D7570646174652E6A73223B0A2F2A2A2A2A2A2A2F200909696620286E756C6C29207363726970742E63726F73734F726967696E203D206E756C6C3B0A2F2A2A2A2A2A2A2F200909646F6375';
wwv_flow_api.g_varchar2_table(10) := '6D656E742E686561642E617070656E644368696C6428736372697074293B0A2F2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F2065736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D756E757365642D';
wwv_flow_api.g_varchar2_table(11) := '766172730A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F74446F776E6C6F61644D616E6966657374287265717565737454696D656F757429207B0A2F2A2A2A2A2A2A2F2009097265717565737454696D656F7574203D207265717565737454696D';
wwv_flow_api.g_varchar2_table(12) := '656F7574207C7C2031303030303B0A2F2A2A2A2A2A2A2F20090972657475726E206E65772050726F6D6973652866756E6374696F6E287265736F6C76652C2072656A65637429207B0A2F2A2A2A2A2A2A2F2009090969662028747970656F6620584D4C48';
wwv_flow_api.g_varchar2_table(13) := '74747052657175657374203D3D3D2022756E646566696E65642229207B0A2F2A2A2A2A2A2A2F200909090972657475726E2072656A656374286E6577204572726F7228224E6F2062726F7773657220737570706F72742229293B0A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(14) := '0909097D0A2F2A2A2A2A2A2A2F20090909747279207B0A2F2A2A2A2A2A2A2F20090909097661722072657175657374203D206E657720584D4C487474705265717565737428293B0A2F2A2A2A2A2A2A2F2009090909766172207265717565737450617468';
wwv_flow_api.g_varchar2_table(15) := '203D205F5F7765627061636B5F726571756972655F5F2E70202B202222202B20686F7443757272656E7448617368202B20222E686F742D7570646174652E6A736F6E223B0A2F2A2A2A2A2A2A2F2009090909726571756573742E6F70656E282247455422';
wwv_flow_api.g_varchar2_table(16) := '2C2072657175657374506174682C2074727565293B0A2F2A2A2A2A2A2A2F2009090909726571756573742E74696D656F7574203D207265717565737454696D656F75743B0A2F2A2A2A2A2A2A2F2009090909726571756573742E73656E64286E756C6C29';
wwv_flow_api.g_varchar2_table(17) := '3B0A2F2A2A2A2A2A2A2F200909097D206361746368202865727229207B0A2F2A2A2A2A2A2A2F200909090972657475726E2072656A65637428657272293B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F20090909726571756573742E6F6E72';
wwv_flow_api.g_varchar2_table(18) := '6561647973746174656368616E6765203D2066756E6374696F6E2829207B0A2F2A2A2A2A2A2A2F200909090969662028726571756573742E7265616479537461746520213D3D2034292072657475726E3B0A2F2A2A2A2A2A2A2F20090909096966202872';
wwv_flow_api.g_varchar2_table(19) := '6571756573742E737461747573203D3D3D203029207B0A2F2A2A2A2A2A2A2F2009090909092F2F2074696D656F75740A2F2A2A2A2A2A2A2F20090909090972656A656374280A2F2A2A2A2A2A2A2F200909090909096E6577204572726F7228224D616E69';
wwv_flow_api.g_varchar2_table(20) := '66657374207265717565737420746F2022202B207265717565737450617468202B20222074696D6564206F75742E22290A2F2A2A2A2A2A2A2F200909090909293B0A2F2A2A2A2A2A2A2F20090909097D20656C73652069662028726571756573742E7374';
wwv_flow_api.g_varchar2_table(21) := '61747573203D3D3D2034303429207B0A2F2A2A2A2A2A2A2F2009090909092F2F206E6F2075706461746520617661696C61626C650A2F2A2A2A2A2A2A2F2009090909097265736F6C766528293B0A2F2A2A2A2A2A2A2F20090909097D20656C7365206966';
wwv_flow_api.g_varchar2_table(22) := '2028726571756573742E73746174757320213D3D2032303020262620726571756573742E73746174757320213D3D2033303429207B0A2F2A2A2A2A2A2A2F2009090909092F2F206F74686572206661696C7572650A2F2A2A2A2A2A2A2F20090909090972';
wwv_flow_api.g_varchar2_table(23) := '656A656374286E6577204572726F7228224D616E6966657374207265717565737420746F2022202B207265717565737450617468202B2022206661696C65642E2229293B0A2F2A2A2A2A2A2A2F20090909097D20656C7365207B0A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(24) := '09090909092F2F20737563636573730A2F2A2A2A2A2A2A2F200909090909747279207B0A2F2A2A2A2A2A2A2F2009090909090976617220757064617465203D204A534F4E2E706172736528726571756573742E726573706F6E736554657874293B0A2F2A';
wwv_flow_api.g_varchar2_table(25) := '2A2A2A2A2A2F2009090909097D20636174636820286529207B0A2F2A2A2A2A2A2A2F2009090909090972656A6563742865293B0A2F2A2A2A2A2A2A2F2009090909090972657475726E3B0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(26) := '09090909097265736F6C766528757064617465293B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D3B0A2F2A2A2A2A2A2A2F2009097D293B0A2F2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20097661';
wwv_flow_api.g_varchar2_table(27) := '7220686F744170706C794F6E557064617465203D20747275653B0A2F2A2A2A2A2A2A2F20092F2F2065736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D756E757365642D766172730A2F2A2A2A2A2A2A2F200976617220686F74437572';
wwv_flow_api.g_varchar2_table(28) := '72656E7448617368203D20223564353866353638316364343132633165386639223B0A2F2A2A2A2A2A2A2F200976617220686F745265717565737454696D656F7574203D2031303030303B0A2F2A2A2A2A2A2A2F200976617220686F7443757272656E74';
wwv_flow_api.g_varchar2_table(29) := '4D6F64756C6544617461203D207B7D3B0A2F2A2A2A2A2A2A2F200976617220686F7443757272656E744368696C644D6F64756C653B0A2F2A2A2A2A2A2A2F20092F2F2065736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D756E757365';
wwv_flow_api.g_varchar2_table(30) := '642D766172730A2F2A2A2A2A2A2A2F200976617220686F7443757272656E74506172656E7473203D205B5D3B0A2F2A2A2A2A2A2A2F20092F2F2065736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D756E757365642D766172730A2F2A';
wwv_flow_api.g_varchar2_table(31) := '2A2A2A2A2A2F200976617220686F7443757272656E74506172656E747354656D70203D205B5D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F2065736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D756E757365642D766172';
wwv_flow_api.g_varchar2_table(32) := '730A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F7443726561746552657175697265286D6F64756C65496429207B0A2F2A2A2A2A2A2A2F200909766172206D65203D20696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D3B0A2F2A';
wwv_flow_api.g_varchar2_table(33) := '2A2A2A2A2A2F20090969662028216D65292072657475726E205F5F7765627061636B5F726571756972655F5F3B0A2F2A2A2A2A2A2A2F20090976617220666E203D2066756E6374696F6E287265717565737429207B0A2F2A2A2A2A2A2A2F200909096966';
wwv_flow_api.g_varchar2_table(34) := '20286D652E686F742E61637469766529207B0A2F2A2A2A2A2A2A2F200909090969662028696E7374616C6C65644D6F64756C65735B726571756573745D29207B0A2F2A2A2A2A2A2A2F20090909090969662028696E7374616C6C65644D6F64756C65735B';
wwv_flow_api.g_varchar2_table(35) := '726571756573745D2E706172656E74732E696E6465784F66286D6F64756C65496429203D3D3D202D3129207B0A2F2A2A2A2A2A2A2F20090909090909696E7374616C6C65644D6F64756C65735B726571756573745D2E706172656E74732E70757368286D';
wwv_flow_api.g_varchar2_table(36) := '6F64756C654964293B0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F20090909097D20656C7365207B0A2F2A2A2A2A2A2A2F200909090909686F7443757272656E74506172656E7473203D205B6D6F64756C6549645D3B0A2F2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(37) := '2A2F200909090909686F7443757272656E744368696C644D6F64756C65203D20726571756573743B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F2009090909696620286D652E6368696C6472656E2E696E6465784F662872657175657374';
wwv_flow_api.g_varchar2_table(38) := '29203D3D3D202D3129207B0A2F2A2A2A2A2A2A2F2009090909096D652E6368696C6472656E2E707573682872657175657374293B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D20656C7365207B0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(39) := '0909636F6E736F6C652E7761726E280A2F2A2A2A2A2A2A2F200909090909225B484D525D20756E657870656374656420726571756972652822202B0A2F2A2A2A2A2A2A2F2009090909090972657175657374202B0A2F2A2A2A2A2A2A2F20090909090909';
wwv_flow_api.g_varchar2_table(40) := '22292066726F6D20646973706F736564206D6F64756C652022202B0A2F2A2A2A2A2A2A2F200909090909096D6F64756C6549640A2F2A2A2A2A2A2A2F2009090909293B0A2F2A2A2A2A2A2A2F2009090909686F7443757272656E74506172656E7473203D';
wwv_flow_api.g_varchar2_table(41) := '205B5D3B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009090972657475726E205F5F7765627061636B5F726571756972655F5F2872657175657374293B0A2F2A2A2A2A2A2A2F2009097D3B0A2F2A2A2A2A2A2A2F200909766172204F626A';
wwv_flow_api.g_varchar2_table(42) := '656374466163746F7279203D2066756E6374696F6E204F626A656374466163746F7279286E616D6529207B0A2F2A2A2A2A2A2A2F2009090972657475726E207B0A2F2A2A2A2A2A2A2F2009090909636F6E666967757261626C653A20747275652C0A2F2A';
wwv_flow_api.g_varchar2_table(43) := '2A2A2A2A2A2F2009090909656E756D657261626C653A20747275652C0A2F2A2A2A2A2A2A2F20090909096765743A2066756E6374696F6E2829207B0A2F2A2A2A2A2A2A2F20090909090972657475726E205F5F7765627061636B5F726571756972655F5F';
wwv_flow_api.g_varchar2_table(44) := '5B6E616D655D3B0A2F2A2A2A2A2A2A2F20090909097D2C0A2F2A2A2A2A2A2A2F20090909097365743A2066756E6374696F6E2876616C756529207B0A2F2A2A2A2A2A2A2F2009090909095F5F7765627061636B5F726571756972655F5F5B6E616D655D20';
wwv_flow_api.g_varchar2_table(45) := '3D2076616C75653B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D3B0A2F2A2A2A2A2A2A2F2009097D3B0A2F2A2A2A2A2A2A2F200909666F722028766172206E616D6520696E205F5F7765627061636B5F726571756972655F5F';
wwv_flow_api.g_varchar2_table(46) := '29207B0A2F2A2A2A2A2A2A2F20090909696620280A2F2A2A2A2A2A2A2F20090909094F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C285F5F7765627061636B5F726571756972655F5F2C206E616D6529202626';
wwv_flow_api.g_varchar2_table(47) := '0A2F2A2A2A2A2A2A2F20090909096E616D6520213D3D202265222026260A2F2A2A2A2A2A2A2F20090909096E616D6520213D3D202274220A2F2A2A2A2A2A2A2F2009090929207B0A2F2A2A2A2A2A2A2F20090909094F626A6563742E646566696E655072';
wwv_flow_api.g_varchar2_table(48) := '6F706572747928666E2C206E616D652C204F626A656374466163746F7279286E616D6529293B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F200909666E2E65203D2066756E6374696F6E286368756E6B4964';
wwv_flow_api.g_varchar2_table(49) := '29207B0A2F2A2A2A2A2A2A2F2009090969662028686F74537461747573203D3D3D20227265616479222920686F7453657453746174757328227072657061726522293B0A2F2A2A2A2A2A2A2F20090909686F744368756E6B734C6F6164696E672B2B3B0A';
wwv_flow_api.g_varchar2_table(50) := '2F2A2A2A2A2A2A2F2009090972657475726E205F5F7765627061636B5F726571756972655F5F2E65286368756E6B4964292E7468656E2866696E6973684368756E6B4C6F6164696E672C2066756E6374696F6E2865727229207B0A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(51) := '0909090966696E6973684368756E6B4C6F6164696E6728293B0A2F2A2A2A2A2A2A2F20090909097468726F77206572723B0A2F2A2A2A2A2A2A2F200909097D293B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009090966756E6374696F6E2066696E69';
wwv_flow_api.g_varchar2_table(52) := '73684368756E6B4C6F6164696E672829207B0A2F2A2A2A2A2A2A2F2009090909686F744368756E6B734C6F6164696E672D2D3B0A2F2A2A2A2A2A2A2F200909090969662028686F74537461747573203D3D3D2022707265706172652229207B0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(53) := '2A2A2A2F2009090909096966202821686F7457616974696E6746696C65734D61705B6368756E6B49645D29207B0A2F2A2A2A2A2A2A2F20090909090909686F74456E737572655570646174654368756E6B286368756E6B4964293B0A2F2A2A2A2A2A2A2F';
wwv_flow_api.g_varchar2_table(54) := '2009090909097D0A2F2A2A2A2A2A2A2F20090909090969662028686F744368756E6B734C6F6164696E67203D3D3D203020262620686F7457616974696E6746696C6573203D3D3D203029207B0A2F2A2A2A2A2A2A2F20090909090909686F745570646174';
wwv_flow_api.g_varchar2_table(55) := '65446F776E6C6F6164656428293B0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D3B0A2F2A2A2A2A2A2A2F200909666E2E74203D2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(56) := '2876616C75652C206D6F646529207B0A2F2A2A2A2A2A2A2F20090909696620286D6F646520262031292076616C7565203D20666E2876616C7565293B0A2F2A2A2A2A2A2A2F2009090972657475726E205F5F7765627061636B5F726571756972655F5F2E';
wwv_flow_api.g_varchar2_table(57) := '742876616C75652C206D6F64652026207E31293B0A2F2A2A2A2A2A2A2F2009097D3B0A2F2A2A2A2A2A2A2F20090972657475726E20666E3B0A2F2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F2065736C696E742D6469';
wwv_flow_api.g_varchar2_table(58) := '7361626C652D6E6578742D6C696E65206E6F2D756E757365642D766172730A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F744372656174654D6F64756C65286D6F64756C65496429207B0A2F2A2A2A2A2A2A2F20090976617220686F74203D207B';
wwv_flow_api.g_varchar2_table(59) := '0A2F2A2A2A2A2A2A2F200909092F2F20707269766174652073747566660A2F2A2A2A2A2A2A2F200909095F6163636570746564446570656E64656E636965733A207B7D2C0A2F2A2A2A2A2A2A2F200909095F6465636C696E6564446570656E64656E6369';
wwv_flow_api.g_varchar2_table(60) := '65733A207B7D2C0A2F2A2A2A2A2A2A2F200909095F73656C6641636365707465643A2066616C73652C0A2F2A2A2A2A2A2A2F200909095F73656C664465636C696E65643A2066616C73652C0A2F2A2A2A2A2A2A2F200909095F646973706F736548616E64';
wwv_flow_api.g_varchar2_table(61) := '6C6572733A205B5D2C0A2F2A2A2A2A2A2A2F200909095F6D61696E3A20686F7443757272656E744368696C644D6F64756C6520213D3D206D6F64756C6549642C0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909092F2F204D6F64756C65204150490A';
wwv_flow_api.g_varchar2_table(62) := '2F2A2A2A2A2A2A2F200909096163746976653A20747275652C0A2F2A2A2A2A2A2A2F200909096163636570743A2066756E6374696F6E286465702C2063616C6C6261636B29207B0A2F2A2A2A2A2A2A2F200909090969662028646570203D3D3D20756E64';
wwv_flow_api.g_varchar2_table(63) := '6566696E65642920686F742E5F73656C664163636570746564203D20747275653B0A2F2A2A2A2A2A2A2F2009090909656C73652069662028747970656F6620646570203D3D3D202266756E6374696F6E222920686F742E5F73656C664163636570746564';
wwv_flow_api.g_varchar2_table(64) := '203D206465703B0A2F2A2A2A2A2A2A2F2009090909656C73652069662028747970656F6620646570203D3D3D20226F626A65637422290A2F2A2A2A2A2A2A2F200909090909666F7220287661722069203D20303B2069203C206465702E6C656E6774683B';
wwv_flow_api.g_varchar2_table(65) := '20692B2B290A2F2A2A2A2A2A2A2F20090909090909686F742E5F6163636570746564446570656E64656E636965735B6465705B695D5D203D2063616C6C6261636B207C7C2066756E6374696F6E2829207B7D3B0A2F2A2A2A2A2A2A2F2009090909656C73';
wwv_flow_api.g_varchar2_table(66) := '6520686F742E5F6163636570746564446570656E64656E636965735B6465705D203D2063616C6C6261636B207C7C2066756E6374696F6E2829207B7D3B0A2F2A2A2A2A2A2A2F200909097D2C0A2F2A2A2A2A2A2A2F200909096465636C696E653A206675';
wwv_flow_api.g_varchar2_table(67) := '6E6374696F6E2864657029207B0A2F2A2A2A2A2A2A2F200909090969662028646570203D3D3D20756E646566696E65642920686F742E5F73656C664465636C696E6564203D20747275653B0A2F2A2A2A2A2A2A2F2009090909656C736520696620287479';
wwv_flow_api.g_varchar2_table(68) := '70656F6620646570203D3D3D20226F626A65637422290A2F2A2A2A2A2A2A2F200909090909666F7220287661722069203D20303B2069203C206465702E6C656E6774683B20692B2B290A2F2A2A2A2A2A2A2F20090909090909686F742E5F6465636C696E';
wwv_flow_api.g_varchar2_table(69) := '6564446570656E64656E636965735B6465705B695D5D203D20747275653B0A2F2A2A2A2A2A2A2F2009090909656C736520686F742E5F6465636C696E6564446570656E64656E636965735B6465705D203D20747275653B0A2F2A2A2A2A2A2A2F20090909';
wwv_flow_api.g_varchar2_table(70) := '7D2C0A2F2A2A2A2A2A2A2F20090909646973706F73653A2066756E6374696F6E2863616C6C6261636B29207B0A2F2A2A2A2A2A2A2F2009090909686F742E5F646973706F736548616E646C6572732E707573682863616C6C6261636B293B0A2F2A2A2A2A';
wwv_flow_api.g_varchar2_table(71) := '2A2A2F200909097D2C0A2F2A2A2A2A2A2A2F20090909616464446973706F736548616E646C65723A2066756E6374696F6E2863616C6C6261636B29207B0A2F2A2A2A2A2A2A2F2009090909686F742E5F646973706F736548616E646C6572732E70757368';
wwv_flow_api.g_varchar2_table(72) := '2863616C6C6261636B293B0A2F2A2A2A2A2A2A2F200909097D2C0A2F2A2A2A2A2A2A2F2009090972656D6F7665446973706F736548616E646C65723A2066756E6374696F6E2863616C6C6261636B29207B0A2F2A2A2A2A2A2A2F20090909097661722069';
wwv_flow_api.g_varchar2_table(73) := '6478203D20686F742E5F646973706F736548616E646C6572732E696E6465784F662863616C6C6261636B293B0A2F2A2A2A2A2A2A2F200909090969662028696478203E3D20302920686F742E5F646973706F736548616E646C6572732E73706C69636528';
wwv_flow_api.g_varchar2_table(74) := '6964782C2031293B0A2F2A2A2A2A2A2A2F200909097D2C0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909092F2F204D616E6167656D656E74204150490A2F2A2A2A2A2A2A2F20090909636865636B3A20686F74436865636B2C0A2F2A2A2A2A2A2A2F';
wwv_flow_api.g_varchar2_table(75) := '200909096170706C793A20686F744170706C792C0A2F2A2A2A2A2A2A2F200909097374617475733A2066756E6374696F6E286C29207B0A2F2A2A2A2A2A2A2F200909090969662028216C292072657475726E20686F745374617475733B0A2F2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(76) := '2A2F2009090909686F7453746174757348616E646C6572732E70757368286C293B0A2F2A2A2A2A2A2A2F200909097D2C0A2F2A2A2A2A2A2A2F2009090961646453746174757348616E646C65723A2066756E6374696F6E286C29207B0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(77) := '2F2009090909686F7453746174757348616E646C6572732E70757368286C293B0A2F2A2A2A2A2A2A2F200909097D2C0A2F2A2A2A2A2A2A2F2009090972656D6F766553746174757348616E646C65723A2066756E6374696F6E286C29207B0A2F2A2A2A2A';
wwv_flow_api.g_varchar2_table(78) := '2A2A2F200909090976617220696478203D20686F7453746174757348616E646C6572732E696E6465784F66286C293B0A2F2A2A2A2A2A2A2F200909090969662028696478203E3D20302920686F7453746174757348616E646C6572732E73706C69636528';
wwv_flow_api.g_varchar2_table(79) := '6964782C2031293B0A2F2A2A2A2A2A2A2F200909097D2C0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909092F2F696E68657269742066726F6D2070726576696F757320646973706F73652063616C6C0A2F2A2A2A2A2A2A2F20090909646174613A20';
wwv_flow_api.g_varchar2_table(80) := '686F7443757272656E744D6F64756C65446174615B6D6F64756C6549645D0A2F2A2A2A2A2A2A2F2009097D3B0A2F2A2A2A2A2A2A2F200909686F7443757272656E744368696C644D6F64756C65203D20756E646566696E65643B0A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(81) := '090972657475726E20686F743B0A2F2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200976617220686F7453746174757348616E646C657273203D205B5D3B0A2F2A2A2A2A2A2A2F200976617220686F74537461747573203D2022';
wwv_flow_api.g_varchar2_table(82) := '69646C65223B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F74536574537461747573286E657753746174757329207B0A2F2A2A2A2A2A2A2F200909686F74537461747573203D206E65775374617475733B0A2F2A2A2A2A';
wwv_flow_api.g_varchar2_table(83) := '2A2A2F200909666F7220287661722069203D20303B2069203C20686F7453746174757348616E646C6572732E6C656E6774683B20692B2B290A2F2A2A2A2A2A2A2F20090909686F7453746174757348616E646C6572735B695D2E63616C6C286E756C6C2C';
wwv_flow_api.g_varchar2_table(84) := '206E6577537461747573293B0A2F2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F207768696C6520646F776E6C6F6164696E670A2F2A2A2A2A2A2A2F200976617220686F7457616974696E6746696C6573203D20303B0A';
wwv_flow_api.g_varchar2_table(85) := '2F2A2A2A2A2A2A2F200976617220686F744368756E6B734C6F6164696E67203D20303B0A2F2A2A2A2A2A2A2F200976617220686F7457616974696E6746696C65734D6170203D207B7D3B0A2F2A2A2A2A2A2A2F200976617220686F745265717565737465';
wwv_flow_api.g_varchar2_table(86) := '6446696C65734D6170203D207B7D3B0A2F2A2A2A2A2A2A2F200976617220686F74417661696C61626C6546696C65734D6170203D207B7D3B0A2F2A2A2A2A2A2A2F200976617220686F7444656665727265643B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(87) := '2F20092F2F205468652075706461746520696E666F0A2F2A2A2A2A2A2A2F200976617220686F745570646174652C20686F745570646174654E6577486173683B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200966756E6374696F6E20746F4D6F64756C';
wwv_flow_api.g_varchar2_table(88) := '65496428696429207B0A2F2A2A2A2A2A2A2F2009097661722069734E756D626572203D202B6964202B202222203D3D3D2069643B0A2F2A2A2A2A2A2A2F20090972657475726E2069734E756D626572203F202B6964203A2069643B0A2F2A2A2A2A2A2A2F';
wwv_flow_api.g_varchar2_table(89) := '20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F74436865636B286170706C7929207B0A2F2A2A2A2A2A2A2F20090969662028686F7453746174757320213D3D202269646C652229207B0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(90) := '097468726F77206E6577204572726F722822636865636B2829206973206F6E6C7920616C6C6F77656420696E2069646C652073746174757322293B0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F200909686F744170706C794F6E557064617465';
wwv_flow_api.g_varchar2_table(91) := '203D206170706C793B0A2F2A2A2A2A2A2A2F200909686F745365745374617475732822636865636B22293B0A2F2A2A2A2A2A2A2F20090972657475726E20686F74446F776E6C6F61644D616E696665737428686F745265717565737454696D656F757429';
wwv_flow_api.g_varchar2_table(92) := '2E7468656E2866756E6374696F6E2875706461746529207B0A2F2A2A2A2A2A2A2F20090909696620282175706461746529207B0A2F2A2A2A2A2A2A2F2009090909686F74536574537461747573282269646C6522293B0A2F2A2A2A2A2A2A2F2009090909';
wwv_flow_api.g_varchar2_table(93) := '72657475726E206E756C6C3B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F20090909686F7452657175657374656446696C65734D6170203D207B7D3B0A2F2A2A2A2A2A2A2F20090909686F7457616974696E6746696C65734D6170203D207B';
wwv_flow_api.g_varchar2_table(94) := '7D3B0A2F2A2A2A2A2A2A2F20090909686F74417661696C61626C6546696C65734D6170203D207570646174652E633B0A2F2A2A2A2A2A2A2F20090909686F745570646174654E657748617368203D207570646174652E683B0A2F2A2A2A2A2A2A2F0A2F2A';
wwv_flow_api.g_varchar2_table(95) := '2A2A2A2A2A2F20090909686F7453657453746174757328227072657061726522293B0A2F2A2A2A2A2A2A2F200909097661722070726F6D697365203D206E65772050726F6D6973652866756E6374696F6E287265736F6C76652C2072656A65637429207B';
wwv_flow_api.g_varchar2_table(96) := '0A2F2A2A2A2A2A2A2F2009090909686F744465666572726564203D207B0A2F2A2A2A2A2A2A2F2009090909097265736F6C76653A207265736F6C76652C0A2F2A2A2A2A2A2A2F20090909090972656A6563743A2072656A6563740A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(97) := '090909097D3B0A2F2A2A2A2A2A2A2F200909097D293B0A2F2A2A2A2A2A2A2F20090909686F74557064617465203D207B7D3B0A2F2A2A2A2A2A2A2F20090909766172206368756E6B4964203D20226D61696E223B0A2F2A2A2A2A2A2A2F200909092F2F20';
wwv_flow_api.g_varchar2_table(98) := '65736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D6C6F6E652D626C6F636B730A2F2A2A2A2A2A2A2F200909097B0A2F2A2A2A2A2A2A2F20090909092F2A676C6F62616C73206368756E6B4964202A2F0A2F2A2A2A2A2A2A2F20090909';
wwv_flow_api.g_varchar2_table(99) := '09686F74456E737572655570646174654368756E6B286368756E6B4964293B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F20090909696620280A2F2A2A2A2A2A2A2F2009090909686F74537461747573203D3D3D2022707265706172652220';
wwv_flow_api.g_varchar2_table(100) := '26260A2F2A2A2A2A2A2A2F2009090909686F744368756E6B734C6F6164696E67203D3D3D20302026260A2F2A2A2A2A2A2A2F2009090909686F7457616974696E6746696C6573203D3D3D20300A2F2A2A2A2A2A2A2F2009090929207B0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(101) := '2F2009090909686F74557064617465446F776E6C6F6164656428293B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009090972657475726E2070726F6D6973653B0A2F2A2A2A2A2A2A2F2009097D293B0A2F2A2A2A2A2A2A2F20097D0A2F2A';
wwv_flow_api.g_varchar2_table(102) := '2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F2065736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D756E757365642D766172730A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F744164645570646174654368756E6B28636875';
wwv_flow_api.g_varchar2_table(103) := '6E6B49642C206D6F72654D6F64756C657329207B0A2F2A2A2A2A2A2A2F2009096966202821686F74417661696C61626C6546696C65734D61705B6368756E6B49645D207C7C2021686F7452657175657374656446696C65734D61705B6368756E6B49645D';
wwv_flow_api.g_varchar2_table(104) := '290A2F2A2A2A2A2A2A2F2009090972657475726E3B0A2F2A2A2A2A2A2A2F200909686F7452657175657374656446696C65734D61705B6368756E6B49645D203D2066616C73653B0A2F2A2A2A2A2A2A2F200909666F722028766172206D6F64756C654964';
wwv_flow_api.g_varchar2_table(105) := '20696E206D6F72654D6F64756C657329207B0A2F2A2A2A2A2A2A2F20090909696620284F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C286D6F72654D6F64756C65732C206D6F64756C6549642929207B0A2F2A';
wwv_flow_api.g_varchar2_table(106) := '2A2A2A2A2A2F2009090909686F745570646174655B6D6F64756C6549645D203D206D6F72654D6F64756C65735B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F200909696620282D2D';
wwv_flow_api.g_varchar2_table(107) := '686F7457616974696E6746696C6573203D3D3D203020262620686F744368756E6B734C6F6164696E67203D3D3D203029207B0A2F2A2A2A2A2A2A2F20090909686F74557064617465446F776E6C6F6164656428293B0A2F2A2A2A2A2A2A2F2009097D0A2F';
wwv_flow_api.g_varchar2_table(108) := '2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F74456E737572655570646174654368756E6B286368756E6B496429207B0A2F2A2A2A2A2A2A2F2009096966202821686F74417661696C61626C6546';
wwv_flow_api.g_varchar2_table(109) := '696C65734D61705B6368756E6B49645D29207B0A2F2A2A2A2A2A2A2F20090909686F7457616974696E6746696C65734D61705B6368756E6B49645D203D20747275653B0A2F2A2A2A2A2A2A2F2009097D20656C7365207B0A2F2A2A2A2A2A2A2F20090909';
wwv_flow_api.g_varchar2_table(110) := '686F7452657175657374656446696C65734D61705B6368756E6B49645D203D20747275653B0A2F2A2A2A2A2A2A2F20090909686F7457616974696E6746696C65732B2B3B0A2F2A2A2A2A2A2A2F20090909686F74446F776E6C6F61645570646174654368';
wwv_flow_api.g_varchar2_table(111) := '756E6B286368756E6B4964293B0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F74557064617465446F776E6C6F616465642829207B0A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(112) := '0909686F745365745374617475732822726561647922293B0A2F2A2A2A2A2A2A2F200909766172206465666572726564203D20686F7444656665727265643B0A2F2A2A2A2A2A2A2F200909686F744465666572726564203D206E756C6C3B0A2F2A2A2A2A';
wwv_flow_api.g_varchar2_table(113) := '2A2A2F20090969662028216465666572726564292072657475726E3B0A2F2A2A2A2A2A2A2F20090969662028686F744170706C794F6E55706461746529207B0A2F2A2A2A2A2A2A2F200909092F2F2057726170206465666572726564206F626A65637420';
wwv_flow_api.g_varchar2_table(114) := '696E2050726F6D69736520746F206D61726B20697420617320612077656C6C2D68616E646C65642050726F6D69736520746F0A2F2A2A2A2A2A2A2F200909092F2F2061766F69642074726967676572696E6720756E63617567687420657863657074696F';
wwv_flow_api.g_varchar2_table(115) := '6E207761726E696E6720696E204368726F6D652E0A2F2A2A2A2A2A2A2F200909092F2F205365652068747470733A2F2F627567732E6368726F6D69756D2E6F72672F702F6368726F6D69756D2F6973737565732F64657461696C3F69643D343635363636';
wwv_flow_api.g_varchar2_table(116) := '0A2F2A2A2A2A2A2A2F2009090950726F6D6973652E7265736F6C766528290A2F2A2A2A2A2A2A2F20090909092E7468656E2866756E6374696F6E2829207B0A2F2A2A2A2A2A2A2F20090909090972657475726E20686F744170706C7928686F744170706C';
wwv_flow_api.g_varchar2_table(117) := '794F6E557064617465293B0A2F2A2A2A2A2A2A2F20090909097D290A2F2A2A2A2A2A2A2F20090909092E7468656E280A2F2A2A2A2A2A2A2F20090909090966756E6374696F6E28726573756C7429207B0A2F2A2A2A2A2A2A2F2009090909090964656665';
wwv_flow_api.g_varchar2_table(118) := '727265642E7265736F6C766528726573756C74293B0A2F2A2A2A2A2A2A2F2009090909097D2C0A2F2A2A2A2A2A2A2F20090909090966756E6374696F6E2865727229207B0A2F2A2A2A2A2A2A2F2009090909090964656665727265642E72656A65637428';
wwv_flow_api.g_varchar2_table(119) := '657272293B0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F2009090909293B0A2F2A2A2A2A2A2A2F2009097D20656C7365207B0A2F2A2A2A2A2A2A2F20090909766172206F757464617465644D6F64756C6573203D205B5D3B0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(120) := '2A2A2A2F20090909666F72202876617220696420696E20686F7455706461746529207B0A2F2A2A2A2A2A2A2F2009090909696620284F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C28686F745570646174652C';
wwv_flow_api.g_varchar2_table(121) := '2069642929207B0A2F2A2A2A2A2A2A2F2009090909096F757464617465644D6F64756C65732E7075736828746F4D6F64756C65496428696429293B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(122) := '0964656665727265642E7265736F6C7665286F757464617465644D6F64756C6573293B0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F744170706C79286F70';
wwv_flow_api.g_varchar2_table(123) := '74696F6E7329207B0A2F2A2A2A2A2A2A2F20090969662028686F7453746174757320213D3D2022726561647922290A2F2A2A2A2A2A2A2F200909097468726F77206E6577204572726F7228226170706C792829206973206F6E6C7920616C6C6F77656420';
wwv_flow_api.g_varchar2_table(124) := '696E2072656164792073746174757322293B0A2F2A2A2A2A2A2A2F2009096F7074696F6E73203D206F7074696F6E73207C7C207B7D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009097661722063623B0A2F2A2A2A2A2A2A2F20090976617220693B';
wwv_flow_api.g_varchar2_table(125) := '0A2F2A2A2A2A2A2A2F200909766172206A3B0A2F2A2A2A2A2A2A2F200909766172206D6F64756C653B0A2F2A2A2A2A2A2A2F200909766172206D6F64756C6549643B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20090966756E6374696F6E2067657441';
wwv_flow_api.g_varchar2_table(126) := '666665637465645374756666287570646174654D6F64756C65496429207B0A2F2A2A2A2A2A2A2F20090909766172206F757464617465644D6F64756C6573203D205B7570646174654D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F20090909766172206F';
wwv_flow_api.g_varchar2_table(127) := '75746461746564446570656E64656E63696573203D207B7D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20090909766172207175657565203D206F757464617465644D6F64756C65732E6D61702866756E6374696F6E28696429207B0A2F2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(128) := '2A2F200909090972657475726E207B0A2F2A2A2A2A2A2A2F200909090909636861696E3A205B69645D2C0A2F2A2A2A2A2A2A2F20090909090969643A2069640A2F2A2A2A2A2A2A2F20090909097D3B0A2F2A2A2A2A2A2A2F200909097D293B0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(129) := '2A2A2A2F200909097768696C65202871756575652E6C656E677468203E203029207B0A2F2A2A2A2A2A2A2F20090909097661722071756575654974656D203D2071756575652E706F7028293B0A2F2A2A2A2A2A2A2F2009090909766172206D6F64756C65';
wwv_flow_api.g_varchar2_table(130) := '4964203D2071756575654974656D2E69643B0A2F2A2A2A2A2A2A2F200909090976617220636861696E203D2071756575654974656D2E636861696E3B0A2F2A2A2A2A2A2A2F20090909096D6F64756C65203D20696E7374616C6C65644D6F64756C65735B';
wwv_flow_api.g_varchar2_table(131) := '6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F200909090969662028216D6F64756C65207C7C206D6F64756C652E686F742E5F73656C6641636365707465642920636F6E74696E75653B0A2F2A2A2A2A2A2A2F2009090909696620286D6F64756C652E68';
wwv_flow_api.g_varchar2_table(132) := '6F742E5F73656C664465636C696E656429207B0A2F2A2A2A2A2A2A2F20090909090972657475726E207B0A2F2A2A2A2A2A2A2F20090909090909747970653A202273656C662D6465636C696E6564222C0A2F2A2A2A2A2A2A2F2009090909090963686169';
wwv_flow_api.g_varchar2_table(133) := '6E3A20636861696E2C0A2F2A2A2A2A2A2A2F200909090909096D6F64756C6549643A206D6F64756C6549640A2F2A2A2A2A2A2A2F2009090909097D3B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F2009090909696620286D6F64756C652E';
wwv_flow_api.g_varchar2_table(134) := '686F742E5F6D61696E29207B0A2F2A2A2A2A2A2A2F20090909090972657475726E207B0A2F2A2A2A2A2A2A2F20090909090909747970653A2022756E6163636570746564222C0A2F2A2A2A2A2A2A2F20090909090909636861696E3A20636861696E2C0A';
wwv_flow_api.g_varchar2_table(135) := '2F2A2A2A2A2A2A2F200909090909096D6F64756C6549643A206D6F64756C6549640A2F2A2A2A2A2A2A2F2009090909097D3B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F2009090909666F7220287661722069203D20303B2069203C206D';
wwv_flow_api.g_varchar2_table(136) := '6F64756C652E706172656E74732E6C656E6774683B20692B2B29207B0A2F2A2A2A2A2A2A2F20090909090976617220706172656E744964203D206D6F64756C652E706172656E74735B695D3B0A2F2A2A2A2A2A2A2F20090909090976617220706172656E';
wwv_flow_api.g_varchar2_table(137) := '74203D20696E7374616C6C65644D6F64756C65735B706172656E7449645D3B0A2F2A2A2A2A2A2A2F2009090909096966202821706172656E742920636F6E74696E75653B0A2F2A2A2A2A2A2A2F20090909090969662028706172656E742E686F742E5F64';
wwv_flow_api.g_varchar2_table(138) := '65636C696E6564446570656E64656E636965735B6D6F64756C6549645D29207B0A2F2A2A2A2A2A2A2F2009090909090972657475726E207B0A2F2A2A2A2A2A2A2F2009090909090909747970653A20226465636C696E6564222C0A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(139) := '09090909090909636861696E3A20636861696E2E636F6E636174285B706172656E7449645D292C0A2F2A2A2A2A2A2A2F20090909090909096D6F64756C6549643A206D6F64756C6549642C0A2F2A2A2A2A2A2A2F2009090909090909706172656E744964';
wwv_flow_api.g_varchar2_table(140) := '3A20706172656E7449640A2F2A2A2A2A2A2A2F200909090909097D3B0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F200909090909696620286F757464617465644D6F64756C65732E696E6465784F6628706172656E7449642920213D3D';
wwv_flow_api.g_varchar2_table(141) := '202D312920636F6E74696E75653B0A2F2A2A2A2A2A2A2F20090909090969662028706172656E742E686F742E5F6163636570746564446570656E64656E636965735B6D6F64756C6549645D29207B0A2F2A2A2A2A2A2A2F2009090909090969662028216F';
wwv_flow_api.g_varchar2_table(142) := '75746461746564446570656E64656E636965735B706172656E7449645D290A2F2A2A2A2A2A2A2F20090909090909096F75746461746564446570656E64656E636965735B706172656E7449645D203D205B5D3B0A2F2A2A2A2A2A2A2F2009090909090961';
wwv_flow_api.g_varchar2_table(143) := '6464416C6C546F536574286F75746461746564446570656E64656E636965735B706172656E7449645D2C205B6D6F64756C6549645D293B0A2F2A2A2A2A2A2A2F20090909090909636F6E74696E75653B0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A';
wwv_flow_api.g_varchar2_table(144) := '2A2A2A2A2F20090909090964656C657465206F75746461746564446570656E64656E636965735B706172656E7449645D3B0A2F2A2A2A2A2A2A2F2009090909096F757464617465644D6F64756C65732E7075736828706172656E744964293B0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(145) := '2A2A2A2F20090909090971756575652E70757368287B0A2F2A2A2A2A2A2A2F20090909090909636861696E3A20636861696E2E636F6E636174285B706172656E7449645D292C0A2F2A2A2A2A2A2A2F2009090909090969643A20706172656E7449640A2F';
wwv_flow_api.g_varchar2_table(146) := '2A2A2A2A2A2A2F2009090909097D293B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009090972657475726E207B0A2F2A2A2A2A2A2A2F2009090909747970653A202261636365';
wwv_flow_api.g_varchar2_table(147) := '70746564222C0A2F2A2A2A2A2A2A2F20090909096D6F64756C6549643A207570646174654D6F64756C6549642C0A2F2A2A2A2A2A2A2F20090909096F757464617465644D6F64756C65733A206F757464617465644D6F64756C65732C0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(148) := '2F20090909096F75746461746564446570656E64656E636965733A206F75746461746564446570656E64656E636965730A2F2A2A2A2A2A2A2F200909097D3B0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20090966756E';
wwv_flow_api.g_varchar2_table(149) := '6374696F6E20616464416C6C546F53657428612C206229207B0A2F2A2A2A2A2A2A2F20090909666F7220287661722069203D20303B2069203C20622E6C656E6774683B20692B2B29207B0A2F2A2A2A2A2A2A2F2009090909766172206974656D203D2062';
wwv_flow_api.g_varchar2_table(150) := '5B695D3B0A2F2A2A2A2A2A2A2F200909090969662028612E696E6465784F66286974656D29203D3D3D202D312920612E70757368286974656D293B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(151) := '2A2A2A2F2009092F2F20617420626567696E20616C6C2075706461746573206D6F64756C657320617265206F757464617465640A2F2A2A2A2A2A2A2F2009092F2F2074686520226F7574646174656422207374617475732063616E2070726F7061676174';
wwv_flow_api.g_varchar2_table(152) := '6520746F20706172656E7473206966207468657920646F6E27742061636365707420746865206368696C6472656E0A2F2A2A2A2A2A2A2F200909766172206F75746461746564446570656E64656E63696573203D207B7D3B0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(153) := '766172206F757464617465644D6F64756C6573203D205B5D3B0A2F2A2A2A2A2A2A2F200909766172206170706C696564557064617465203D207B7D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909766172207761726E556E657870656374656452';
wwv_flow_api.g_varchar2_table(154) := '657175697265203D2066756E6374696F6E207761726E556E6578706563746564526571756972652829207B0A2F2A2A2A2A2A2A2F20090909636F6E736F6C652E7761726E280A2F2A2A2A2A2A2A2F2009090909225B484D525D20756E6578706563746564';
wwv_flow_api.g_varchar2_table(155) := '20726571756972652822202B20726573756C742E6D6F64756C654964202B20222920746F20646973706F736564206D6F64756C65220A2F2A2A2A2A2A2A2F20090909293B0A2F2A2A2A2A2A2A2F2009097D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F';
wwv_flow_api.g_varchar2_table(156) := '200909666F72202876617220696420696E20686F7455706461746529207B0A2F2A2A2A2A2A2A2F20090909696620284F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C28686F745570646174652C206964292920';
wwv_flow_api.g_varchar2_table(157) := '7B0A2F2A2A2A2A2A2A2F20090909096D6F64756C654964203D20746F4D6F64756C654964286964293B0A2F2A2A2A2A2A2A2F20090909092F2A2A204074797065207B544F444F7D202A2F0A2F2A2A2A2A2A2A2F200909090976617220726573756C743B0A';
wwv_flow_api.g_varchar2_table(158) := '2F2A2A2A2A2A2A2F200909090969662028686F745570646174655B69645D29207B0A2F2A2A2A2A2A2A2F200909090909726573756C74203D2067657441666665637465645374756666286D6F64756C654964293B0A2F2A2A2A2A2A2A2F20090909097D20';
wwv_flow_api.g_varchar2_table(159) := '656C7365207B0A2F2A2A2A2A2A2A2F200909090909726573756C74203D207B0A2F2A2A2A2A2A2A2F20090909090909747970653A2022646973706F736564222C0A2F2A2A2A2A2A2A2F200909090909096D6F64756C6549643A2069640A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(160) := '2F2009090909097D3B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F20090909092F2A2A204074797065207B4572726F727C66616C73657D202A2F0A2F2A2A2A2A2A2A2F20090909097661722061626F72744572726F72203D2066616C7365';
wwv_flow_api.g_varchar2_table(161) := '3B0A2F2A2A2A2A2A2A2F200909090976617220646F4170706C79203D2066616C73653B0A2F2A2A2A2A2A2A2F200909090976617220646F446973706F7365203D2066616C73653B0A2F2A2A2A2A2A2A2F200909090976617220636861696E496E666F203D';
wwv_flow_api.g_varchar2_table(162) := '2022223B0A2F2A2A2A2A2A2A2F200909090969662028726573756C742E636861696E29207B0A2F2A2A2A2A2A2A2F200909090909636861696E496E666F203D20225C6E5570646174652070726F7061676174696F6E3A2022202B20726573756C742E6368';
wwv_flow_api.g_varchar2_table(163) := '61696E2E6A6F696E2822202D3E2022293B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F20090909097377697463682028726573756C742E7479706529207B0A2F2A2A2A2A2A2A2F20090909090963617365202273656C662D6465636C696E';
wwv_flow_api.g_varchar2_table(164) := '6564223A0A2F2A2A2A2A2A2A2F20090909090909696620286F7074696F6E732E6F6E4465636C696E656429206F7074696F6E732E6F6E4465636C696E656428726573756C74293B0A2F2A2A2A2A2A2A2F2009090909090969662028216F7074696F6E732E';
wwv_flow_api.g_varchar2_table(165) := '69676E6F72654465636C696E6564290A2F2A2A2A2A2A2A2F200909090909090961626F72744572726F72203D206E6577204572726F72280A2F2A2A2A2A2A2A2F2009090909090909092241626F727465642062656361757365206F662073656C66206465';
wwv_flow_api.g_varchar2_table(166) := '636C696E653A2022202B0A2F2A2A2A2A2A2A2F20090909090909090909726573756C742E6D6F64756C654964202B0A2F2A2A2A2A2A2A2F20090909090909090909636861696E496E666F0A2F2A2A2A2A2A2A2F2009090909090909293B0A2F2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(167) := '2A2F20090909090909627265616B3B0A2F2A2A2A2A2A2A2F2009090909096361736520226465636C696E6564223A0A2F2A2A2A2A2A2A2F20090909090909696620286F7074696F6E732E6F6E4465636C696E656429206F7074696F6E732E6F6E4465636C';
wwv_flow_api.g_varchar2_table(168) := '696E656428726573756C74293B0A2F2A2A2A2A2A2A2F2009090909090969662028216F7074696F6E732E69676E6F72654465636C696E6564290A2F2A2A2A2A2A2A2F200909090909090961626F72744572726F72203D206E6577204572726F72280A2F2A';
wwv_flow_api.g_varchar2_table(169) := '2A2A2A2A2A2F2009090909090909092241626F727465642062656361757365206F66206465636C696E656420646570656E64656E63793A2022202B0A2F2A2A2A2A2A2A2F20090909090909090909726573756C742E6D6F64756C654964202B0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(170) := '2A2A2A2F200909090909090909092220696E2022202B0A2F2A2A2A2A2A2A2F20090909090909090909726573756C742E706172656E744964202B0A2F2A2A2A2A2A2A2F20090909090909090909636861696E496E666F0A2F2A2A2A2A2A2A2F2009090909';
wwv_flow_api.g_varchar2_table(171) := '090909293B0A2F2A2A2A2A2A2A2F20090909090909627265616B3B0A2F2A2A2A2A2A2A2F200909090909636173652022756E6163636570746564223A0A2F2A2A2A2A2A2A2F20090909090909696620286F7074696F6E732E6F6E556E6163636570746564';
wwv_flow_api.g_varchar2_table(172) := '29206F7074696F6E732E6F6E556E616363657074656428726573756C74293B0A2F2A2A2A2A2A2A2F2009090909090969662028216F7074696F6E732E69676E6F7265556E6163636570746564290A2F2A2A2A2A2A2A2F200909090909090961626F727445';
wwv_flow_api.g_varchar2_table(173) := '72726F72203D206E6577204572726F72280A2F2A2A2A2A2A2A2F2009090909090909092241626F7274656420626563617573652022202B206D6F64756C654964202B2022206973206E6F7420616363657074656422202B20636861696E496E666F0A2F2A';
wwv_flow_api.g_varchar2_table(174) := '2A2A2A2A2A2F2009090909090909293B0A2F2A2A2A2A2A2A2F20090909090909627265616B3B0A2F2A2A2A2A2A2A2F2009090909096361736520226163636570746564223A0A2F2A2A2A2A2A2A2F20090909090909696620286F7074696F6E732E6F6E41';
wwv_flow_api.g_varchar2_table(175) := '6363657074656429206F7074696F6E732E6F6E416363657074656428726573756C74293B0A2F2A2A2A2A2A2A2F20090909090909646F4170706C79203D20747275653B0A2F2A2A2A2A2A2A2F20090909090909627265616B3B0A2F2A2A2A2A2A2A2F2009';
wwv_flow_api.g_varchar2_table(176) := '09090909636173652022646973706F736564223A0A2F2A2A2A2A2A2A2F20090909090909696620286F7074696F6E732E6F6E446973706F73656429206F7074696F6E732E6F6E446973706F73656428726573756C74293B0A2F2A2A2A2A2A2A2F20090909';
wwv_flow_api.g_varchar2_table(177) := '090909646F446973706F7365203D20747275653B0A2F2A2A2A2A2A2A2F20090909090909627265616B3B0A2F2A2A2A2A2A2A2F20090909090964656661756C743A0A2F2A2A2A2A2A2A2F200909090909097468726F77206E6577204572726F722822556E';
wwv_flow_api.g_varchar2_table(178) := '657863657074696F6E20747970652022202B20726573756C742E74797065293B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F20090909096966202861626F72744572726F7229207B0A2F2A2A2A2A2A2A2F200909090909686F7453657453';
wwv_flow_api.g_varchar2_table(179) := '7461747573282261626F727422293B0A2F2A2A2A2A2A2A2F20090909090972657475726E2050726F6D6973652E72656A6563742861626F72744572726F72293B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909090969662028646F41';
wwv_flow_api.g_varchar2_table(180) := '70706C7929207B0A2F2A2A2A2A2A2A2F2009090909096170706C6965645570646174655B6D6F64756C6549645D203D20686F745570646174655B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F200909090909616464416C6C546F536574286F75746461';
wwv_flow_api.g_varchar2_table(181) := '7465644D6F64756C65732C20726573756C742E6F757464617465644D6F64756C6573293B0A2F2A2A2A2A2A2A2F200909090909666F7220286D6F64756C65496420696E20726573756C742E6F75746461746564446570656E64656E6369657329207B0A2F';
wwv_flow_api.g_varchar2_table(182) := '2A2A2A2A2A2A2F20090909090909696620280A2F2A2A2A2A2A2A2F20090909090909094F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C280A2F2A2A2A2A2A2A2F200909090909090909726573756C742E6F7574';
wwv_flow_api.g_varchar2_table(183) := '6461746564446570656E64656E636965732C0A2F2A2A2A2A2A2A2F2009090909090909096D6F64756C6549640A2F2A2A2A2A2A2A2F2009090909090909290A2F2A2A2A2A2A2A2F2009090909090929207B0A2F2A2A2A2A2A2A2F20090909090909096966';
wwv_flow_api.g_varchar2_table(184) := '2028216F75746461746564446570656E64656E636965735B6D6F64756C6549645D290A2F2A2A2A2A2A2A2F2009090909090909096F75746461746564446570656E64656E636965735B6D6F64756C6549645D203D205B5D3B0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(185) := '0909090909616464416C6C546F536574280A2F2A2A2A2A2A2A2F2009090909090909096F75746461746564446570656E64656E636965735B6D6F64756C6549645D2C0A2F2A2A2A2A2A2A2F200909090909090909726573756C742E6F7574646174656444';
wwv_flow_api.g_varchar2_table(186) := '6570656E64656E636965735B6D6F64756C6549645D0A2F2A2A2A2A2A2A2F2009090909090909293B0A2F2A2A2A2A2A2A2F200909090909097D0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(187) := '090969662028646F446973706F736529207B0A2F2A2A2A2A2A2A2F200909090909616464416C6C546F536574286F757464617465644D6F64756C65732C205B726573756C742E6D6F64756C6549645D293B0A2F2A2A2A2A2A2A2F2009090909096170706C';
wwv_flow_api.g_varchar2_table(188) := '6965645570646174655B6D6F64756C6549645D203D207761726E556E6578706563746564526571756972653B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(189) := '2A2A2A2F2009092F2F2053746F72652073656C66206163636570746564206F75746461746564206D6F64756C657320746F2072657175697265207468656D206C6174657220627920746865206D6F64756C652073797374656D0A2F2A2A2A2A2A2A2F2009';
wwv_flow_api.g_varchar2_table(190) := '09766172206F7574646174656453656C6641636365707465644D6F64756C6573203D205B5D3B0A2F2A2A2A2A2A2A2F200909666F72202869203D20303B2069203C206F757464617465644D6F64756C65732E6C656E6774683B20692B2B29207B0A2F2A2A';
wwv_flow_api.g_varchar2_table(191) := '2A2A2A2A2F200909096D6F64756C654964203D206F757464617465644D6F64756C65735B695D3B0A2F2A2A2A2A2A2A2F20090909696620280A2F2A2A2A2A2A2A2F2009090909696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D2026260A';
wwv_flow_api.g_varchar2_table(192) := '2F2A2A2A2A2A2A2F2009090909696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D2E686F742E5F73656C6641636365707465642026260A2F2A2A2A2A2A2A2F20090909092F2F2072656D6F7665642073656C662D6163636570746564206D';
wwv_flow_api.g_varchar2_table(193) := '6F64756C65732073686F756C64206E6F742062652072657175697265640A2F2A2A2A2A2A2A2F20090909096170706C6965645570646174655B6D6F64756C6549645D20213D3D207761726E556E6578706563746564526571756972650A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(194) := '2F2009090929207B0A2F2A2A2A2A2A2A2F20090909096F7574646174656453656C6641636365707465644D6F64756C65732E70757368287B0A2F2A2A2A2A2A2A2F2009090909096D6F64756C653A206D6F64756C6549642C0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(195) := '0909096572726F7248616E646C65723A20696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D2E686F742E5F73656C6641636365707465640A2F2A2A2A2A2A2A2F20090909097D293B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(196) := '2F2009097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009092F2F204E6F7720696E2022646973706F7365222070686173650A2F2A2A2A2A2A2A2F200909686F745365745374617475732822646973706F736522293B0A2F2A2A2A2A2A2A2F2009094F';
wwv_flow_api.g_varchar2_table(197) := '626A6563742E6B65797328686F74417661696C61626C6546696C65734D6170292E666F72456163682866756E6374696F6E286368756E6B496429207B0A2F2A2A2A2A2A2A2F2009090969662028686F74417661696C61626C6546696C65734D61705B6368';
wwv_flow_api.g_varchar2_table(198) := '756E6B49645D203D3D3D2066616C736529207B0A2F2A2A2A2A2A2A2F2009090909686F74446973706F73654368756E6B286368756E6B4964293B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D293B0A2F2A2A2A2A2A2A2F0A2F2A2A';
wwv_flow_api.g_varchar2_table(199) := '2A2A2A2A2F200909766172206964783B0A2F2A2A2A2A2A2A2F200909766172207175657565203D206F757464617465644D6F64756C65732E736C69636528293B0A2F2A2A2A2A2A2A2F2009097768696C65202871756575652E6C656E677468203E203029';
wwv_flow_api.g_varchar2_table(200) := '207B0A2F2A2A2A2A2A2A2F200909096D6F64756C654964203D2071756575652E706F7028293B0A2F2A2A2A2A2A2A2F200909096D6F64756C65203D20696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F20090909';
wwv_flow_api.g_varchar2_table(201) := '69662028216D6F64756C652920636F6E74696E75653B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909097661722064617461203D207B7D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909092F2F2043616C6C20646973706F73652068616E64';
wwv_flow_api.g_varchar2_table(202) := '6C6572730A2F2A2A2A2A2A2A2F2009090976617220646973706F736548616E646C657273203D206D6F64756C652E686F742E5F646973706F736548616E646C6572733B0A2F2A2A2A2A2A2A2F20090909666F7220286A203D20303B206A203C2064697370';
wwv_flow_api.g_varchar2_table(203) := '6F736548616E646C6572732E6C656E6774683B206A2B2B29207B0A2F2A2A2A2A2A2A2F20090909096362203D20646973706F736548616E646C6572735B6A5D3B0A2F2A2A2A2A2A2A2F200909090963622864617461293B0A2F2A2A2A2A2A2A2F20090909';
wwv_flow_api.g_varchar2_table(204) := '7D0A2F2A2A2A2A2A2A2F20090909686F7443757272656E744D6F64756C65446174615B6D6F64756C6549645D203D20646174613B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909092F2F2064697361626C65206D6F64756C65202874686973206469';
wwv_flow_api.g_varchar2_table(205) := '7361626C65732072657175697265732066726F6D2074686973206D6F64756C65290A2F2A2A2A2A2A2A2F200909096D6F64756C652E686F742E616374697665203D2066616C73653B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909092F2F2072656D';
wwv_flow_api.g_varchar2_table(206) := '6F7665206D6F64756C652066726F6D2063616368650A2F2A2A2A2A2A2A2F2009090964656C65746520696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909092F2F207768656E206469';
wwv_flow_api.g_varchar2_table(207) := '73706F73696E67207468657265206973206E6F206E65656420746F2063616C6C20646973706F73652068616E646C65720A2F2A2A2A2A2A2A2F2009090964656C657465206F75746461746564446570656E64656E636965735B6D6F64756C6549645D3B0A';
wwv_flow_api.g_varchar2_table(208) := '2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909092F2F2072656D6F76652022706172656E747322207265666572656E6365732066726F6D20616C6C206368696C6472656E0A2F2A2A2A2A2A2A2F20090909666F7220286A203D20303B206A203C206D6F';
wwv_flow_api.g_varchar2_table(209) := '64756C652E6368696C6472656E2E6C656E6774683B206A2B2B29207B0A2F2A2A2A2A2A2A2F2009090909766172206368696C64203D20696E7374616C6C65644D6F64756C65735B6D6F64756C652E6368696C6472656E5B6A5D5D3B0A2F2A2A2A2A2A2A2F';
wwv_flow_api.g_varchar2_table(210) := '200909090969662028216368696C642920636F6E74696E75653B0A2F2A2A2A2A2A2A2F2009090909696478203D206368696C642E706172656E74732E696E6465784F66286D6F64756C654964293B0A2F2A2A2A2A2A2A2F20090909096966202869647820';
wwv_flow_api.g_varchar2_table(211) := '3E3D203029207B0A2F2A2A2A2A2A2A2F2009090909096368696C642E706172656E74732E73706C696365286964782C2031293B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(212) := '2A2F0A2F2A2A2A2A2A2A2F2009092F2F2072656D6F7665206F7574646174656420646570656E64656E63792066726F6D206D6F64756C65206368696C6472656E0A2F2A2A2A2A2A2A2F20090976617220646570656E64656E63793B0A2F2A2A2A2A2A2A2F';
wwv_flow_api.g_varchar2_table(213) := '200909766172206D6F64756C654F75746461746564446570656E64656E636965733B0A2F2A2A2A2A2A2A2F200909666F7220286D6F64756C65496420696E206F75746461746564446570656E64656E6369657329207B0A2F2A2A2A2A2A2A2F2009090969';
wwv_flow_api.g_varchar2_table(214) := '6620280A2F2A2A2A2A2A2A2F20090909094F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C286F75746461746564446570656E64656E636965732C206D6F64756C654964290A2F2A2A2A2A2A2A2F200909092920';
wwv_flow_api.g_varchar2_table(215) := '7B0A2F2A2A2A2A2A2A2F20090909096D6F64756C65203D20696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F2009090909696620286D6F64756C6529207B0A2F2A2A2A2A2A2A2F2009090909096D6F64756C654F';
wwv_flow_api.g_varchar2_table(216) := '75746461746564446570656E64656E63696573203D206F75746461746564446570656E64656E636965735B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F200909090909666F7220286A203D20303B206A203C206D6F64756C654F757464617465644465';
wwv_flow_api.g_varchar2_table(217) := '70656E64656E636965732E6C656E6774683B206A2B2B29207B0A2F2A2A2A2A2A2A2F20090909090909646570656E64656E6379203D206D6F64756C654F75746461746564446570656E64656E636965735B6A5D3B0A2F2A2A2A2A2A2A2F20090909090909';
wwv_flow_api.g_varchar2_table(218) := '696478203D206D6F64756C652E6368696C6472656E2E696E6465784F6628646570656E64656E6379293B0A2F2A2A2A2A2A2A2F2009090909090969662028696478203E3D203029206D6F64756C652E6368696C6472656E2E73706C696365286964782C20';
wwv_flow_api.g_varchar2_table(219) := '31293B0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009092F2F204E6F7720696E20226170706C792220';
wwv_flow_api.g_varchar2_table(220) := '70686173650A2F2A2A2A2A2A2A2F200909686F7453657453746174757328226170706C7922293B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909686F7443757272656E7448617368203D20686F745570646174654E6577486173683B0A2F2A2A2A2A';
wwv_flow_api.g_varchar2_table(221) := '2A2A2F0A2F2A2A2A2A2A2A2F2009092F2F20696E73657274206E657720636F64650A2F2A2A2A2A2A2A2F200909666F7220286D6F64756C65496420696E206170706C69656455706461746529207B0A2F2A2A2A2A2A2A2F20090909696620284F626A6563';
wwv_flow_api.g_varchar2_table(222) := '742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C286170706C6965645570646174652C206D6F64756C6549642929207B0A2F2A2A2A2A2A2A2F20090909096D6F64756C65735B6D6F64756C6549645D203D206170706C696564';
wwv_flow_api.g_varchar2_table(223) := '5570646174655B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009092F2F2063616C6C206163636570742068616E646C6572730A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(224) := '766172206572726F72203D206E756C6C3B0A2F2A2A2A2A2A2A2F200909666F7220286D6F64756C65496420696E206F75746461746564446570656E64656E6369657329207B0A2F2A2A2A2A2A2A2F20090909696620280A2F2A2A2A2A2A2A2F2009090909';
wwv_flow_api.g_varchar2_table(225) := '4F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C286F75746461746564446570656E64656E636965732C206D6F64756C654964290A2F2A2A2A2A2A2A2F2009090929207B0A2F2A2A2A2A2A2A2F20090909096D6F';
wwv_flow_api.g_varchar2_table(226) := '64756C65203D20696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F2009090909696620286D6F64756C6529207B0A2F2A2A2A2A2A2A2F2009090909096D6F64756C654F75746461746564446570656E64656E6369';
wwv_flow_api.g_varchar2_table(227) := '6573203D206F75746461746564446570656E64656E636965735B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F2009090909097661722063616C6C6261636B73203D205B5D3B0A2F2A2A2A2A2A2A2F200909090909666F72202869203D20303B2069203C';
wwv_flow_api.g_varchar2_table(228) := '206D6F64756C654F75746461746564446570656E64656E636965732E6C656E6774683B20692B2B29207B0A2F2A2A2A2A2A2A2F20090909090909646570656E64656E6379203D206D6F64756C654F75746461746564446570656E64656E636965735B695D';
wwv_flow_api.g_varchar2_table(229) := '3B0A2F2A2A2A2A2A2A2F200909090909096362203D206D6F64756C652E686F742E5F6163636570746564446570656E64656E636965735B646570656E64656E63795D3B0A2F2A2A2A2A2A2A2F2009090909090969662028636229207B0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(230) := '2F20090909090909096966202863616C6C6261636B732E696E6465784F662863622920213D3D202D312920636F6E74696E75653B0A2F2A2A2A2A2A2A2F200909090909090963616C6C6261636B732E70757368286362293B0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(231) := '090909097D0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F200909090909666F72202869203D20303B2069203C2063616C6C6261636B732E6C656E6774683B20692B2B29207B0A2F2A2A2A2A2A2A2F200909090909096362203D2063616C';
wwv_flow_api.g_varchar2_table(232) := '6C6261636B735B695D3B0A2F2A2A2A2A2A2A2F20090909090909747279207B0A2F2A2A2A2A2A2A2F20090909090909096362286D6F64756C654F75746461746564446570656E64656E63696573293B0A2F2A2A2A2A2A2A2F200909090909097D20636174';
wwv_flow_api.g_varchar2_table(233) := '6368202865727229207B0A2F2A2A2A2A2A2A2F2009090909090909696620286F7074696F6E732E6F6E4572726F72656429207B0A2F2A2A2A2A2A2A2F2009090909090909096F7074696F6E732E6F6E4572726F726564287B0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(234) := '09090909090909747970653A20226163636570742D6572726F726564222C0A2F2A2A2A2A2A2A2F200909090909090909096D6F64756C6549643A206D6F64756C6549642C0A2F2A2A2A2A2A2A2F20090909090909090909646570656E64656E637949643A';
wwv_flow_api.g_varchar2_table(235) := '206D6F64756C654F75746461746564446570656E64656E636965735B695D2C0A2F2A2A2A2A2A2A2F200909090909090909096572726F723A206572720A2F2A2A2A2A2A2A2F2009090909090909097D293B0A2F2A2A2A2A2A2A2F20090909090909097D0A';
wwv_flow_api.g_varchar2_table(236) := '2F2A2A2A2A2A2A2F200909090909090969662028216F7074696F6E732E69676E6F72654572726F72656429207B0A2F2A2A2A2A2A2A2F20090909090909090969662028216572726F7229206572726F72203D206572723B0A2F2A2A2A2A2A2A2F20090909';
wwv_flow_api.g_varchar2_table(237) := '090909097D0A2F2A2A2A2A2A2A2F200909090909097D0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009';
wwv_flow_api.g_varchar2_table(238) := '092F2F204C6F61642073656C66206163636570746564206D6F64756C65730A2F2A2A2A2A2A2A2F200909666F72202869203D20303B2069203C206F7574646174656453656C6641636365707465644D6F64756C65732E6C656E6774683B20692B2B29207B';
wwv_flow_api.g_varchar2_table(239) := '0A2F2A2A2A2A2A2A2F20090909766172206974656D203D206F7574646174656453656C6641636365707465644D6F64756C65735B695D3B0A2F2A2A2A2A2A2A2F200909096D6F64756C654964203D206974656D2E6D6F64756C653B0A2F2A2A2A2A2A2A2F';
wwv_flow_api.g_varchar2_table(240) := '20090909686F7443757272656E74506172656E7473203D205B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F20090909747279207B0A2F2A2A2A2A2A2A2F20090909095F5F7765627061636B5F726571756972655F5F286D6F64756C654964293B0A2F2A';
wwv_flow_api.g_varchar2_table(241) := '2A2A2A2A2A2F200909097D206361746368202865727229207B0A2F2A2A2A2A2A2A2F200909090969662028747970656F66206974656D2E6572726F7248616E646C6572203D3D3D202266756E6374696F6E2229207B0A2F2A2A2A2A2A2A2F200909090909';
wwv_flow_api.g_varchar2_table(242) := '747279207B0A2F2A2A2A2A2A2A2F200909090909096974656D2E6572726F7248616E646C657228657272293B0A2F2A2A2A2A2A2A2F2009090909097D20636174636820286572723229207B0A2F2A2A2A2A2A2A2F20090909090909696620286F7074696F';
wwv_flow_api.g_varchar2_table(243) := '6E732E6F6E4572726F72656429207B0A2F2A2A2A2A2A2A2F20090909090909096F7074696F6E732E6F6E4572726F726564287B0A2F2A2A2A2A2A2A2F200909090909090909747970653A202273656C662D6163636570742D6572726F722D68616E646C65';
wwv_flow_api.g_varchar2_table(244) := '722D6572726F726564222C0A2F2A2A2A2A2A2A2F2009090909090909096D6F64756C6549643A206D6F64756C6549642C0A2F2A2A2A2A2A2A2F2009090909090909096572726F723A20657272322C0A2F2A2A2A2A2A2A2F2009090909090909096F726967';
wwv_flow_api.g_varchar2_table(245) := '696E616C4572726F723A206572720A2F2A2A2A2A2A2A2F20090909090909097D293B0A2F2A2A2A2A2A2A2F200909090909097D0A2F2A2A2A2A2A2A2F2009090909090969662028216F7074696F6E732E69676E6F72654572726F72656429207B0A2F2A2A';
wwv_flow_api.g_varchar2_table(246) := '2A2A2A2A2F200909090909090969662028216572726F7229206572726F72203D20657272323B0A2F2A2A2A2A2A2A2F200909090909097D0A2F2A2A2A2A2A2A2F2009090909090969662028216572726F7229206572726F72203D206572723B0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(247) := '2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F20090909097D20656C7365207B0A2F2A2A2A2A2A2A2F200909090909696620286F7074696F6E732E6F6E4572726F72656429207B0A2F2A2A2A2A2A2A2F200909090909096F7074696F6E732E6F6E4572';
wwv_flow_api.g_varchar2_table(248) := '726F726564287B0A2F2A2A2A2A2A2A2F2009090909090909747970653A202273656C662D6163636570742D6572726F726564222C0A2F2A2A2A2A2A2A2F20090909090909096D6F64756C6549643A206D6F64756C6549642C0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(249) := '09090909096572726F723A206572720A2F2A2A2A2A2A2A2F200909090909097D293B0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F20090909090969662028216F7074696F6E732E69676E6F72654572726F72656429207B0A2F2A2A2A2A';
wwv_flow_api.g_varchar2_table(250) := '2A2A2F2009090909090969662028216572726F7229206572726F72203D206572723B0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(251) := '2F0A2F2A2A2A2A2A2A2F2009092F2F2068616E646C65206572726F727320696E206163636570742068616E646C65727320616E642073656C66206163636570746564206D6F64756C65206C6F61640A2F2A2A2A2A2A2A2F200909696620286572726F7229';
wwv_flow_api.g_varchar2_table(252) := '207B0A2F2A2A2A2A2A2A2F20090909686F7453657453746174757328226661696C22293B0A2F2A2A2A2A2A2A2F2009090972657475726E2050726F6D6973652E72656A656374286572726F72293B0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F';
wwv_flow_api.g_varchar2_table(253) := '0A2F2A2A2A2A2A2A2F200909686F74536574537461747573282269646C6522293B0A2F2A2A2A2A2A2A2F20090972657475726E206E65772050726F6D6973652866756E6374696F6E287265736F6C766529207B0A2F2A2A2A2A2A2A2F200909097265736F';
wwv_flow_api.g_varchar2_table(254) := '6C7665286F757464617465644D6F64756C6573293B0A2F2A2A2A2A2A2A2F2009097D293B0A2F2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F20546865206D6F64756C652063616368650A2F2A2A2A2A2A2A2F20097661';
wwv_flow_api.g_varchar2_table(255) := '7220696E7374616C6C65644D6F64756C6573203D207B7D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F2054686520726571756972652066756E6374696F6E0A2F2A2A2A2A2A2A2F200966756E6374696F6E205F5F7765627061636B5F726571';
wwv_flow_api.g_varchar2_table(256) := '756972655F5F286D6F64756C65496429207B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009092F2F20436865636B206966206D6F64756C6520697320696E2063616368650A2F2A2A2A2A2A2A2F200909696628696E7374616C6C65644D6F64756C6573';
wwv_flow_api.g_varchar2_table(257) := '5B6D6F64756C6549645D29207B0A2F2A2A2A2A2A2A2F2009090972657475726E20696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D2E6578706F7274733B0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F2009092F2F2043726561';
wwv_flow_api.g_varchar2_table(258) := '74652061206E6577206D6F64756C652028616E642070757420697420696E746F20746865206361636865290A2F2A2A2A2A2A2A2F200909766172206D6F64756C65203D20696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D203D207B0A2F';
wwv_flow_api.g_varchar2_table(259) := '2A2A2A2A2A2A2F20090909693A206D6F64756C6549642C0A2F2A2A2A2A2A2A2F200909096C3A2066616C73652C0A2F2A2A2A2A2A2A2F200909096578706F7274733A207B7D2C0A2F2A2A2A2A2A2A2F20090909686F743A20686F744372656174654D6F64';
wwv_flow_api.g_varchar2_table(260) := '756C65286D6F64756C654964292C0A2F2A2A2A2A2A2A2F20090909706172656E74733A2028686F7443757272656E74506172656E747354656D70203D20686F7443757272656E74506172656E74732C20686F7443757272656E74506172656E7473203D20';
wwv_flow_api.g_varchar2_table(261) := '5B5D2C20686F7443757272656E74506172656E747354656D70292C0A2F2A2A2A2A2A2A2F200909096368696C6472656E3A205B5D0A2F2A2A2A2A2A2A2F2009097D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009092F2F2045786563757465207468';
wwv_flow_api.g_varchar2_table(262) := '65206D6F64756C652066756E6374696F6E0A2F2A2A2A2A2A2A2F2009096D6F64756C65735B6D6F64756C6549645D2E63616C6C286D6F64756C652E6578706F7274732C206D6F64756C652C206D6F64756C652E6578706F7274732C20686F744372656174';
wwv_flow_api.g_varchar2_table(263) := '6552657175697265286D6F64756C65496429293B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009092F2F20466C616720746865206D6F64756C65206173206C6F616465640A2F2A2A2A2A2A2A2F2009096D6F64756C652E6C203D20747275653B0A2F2A';
wwv_flow_api.g_varchar2_table(264) := '2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009092F2F2052657475726E20746865206578706F727473206F6620746865206D6F64756C650A2F2A2A2A2A2A2A2F20090972657475726E206D6F64756C652E6578706F7274733B0A2F2A2A2A2A2A2A2F20097D0A';
wwv_flow_api.g_varchar2_table(265) := '2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F206578706F736520746865206D6F64756C6573206F626A65637420285F5F7765627061636B5F6D6F64756C65735F5F290A2F2A2A2A2A2A2A2F20095F5F7765627061636B5F72';
wwv_flow_api.g_varchar2_table(266) := '6571756972655F5F2E6D203D206D6F64756C65733B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F206578706F736520746865206D6F64756C652063616368650A2F2A2A2A2A2A2A2F20095F5F7765627061636B5F726571756972655F5F2E6320';
wwv_flow_api.g_varchar2_table(267) := '3D20696E7374616C6C65644D6F64756C65733B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F20646566696E65206765747465722066756E6374696F6E20666F72206861726D6F6E79206578706F7274730A2F2A2A2A2A2A2A2F20095F5F776562';
wwv_flow_api.g_varchar2_table(268) := '7061636B5F726571756972655F5F2E64203D2066756E6374696F6E286578706F7274732C206E616D652C2067657474657229207B0A2F2A2A2A2A2A2A2F200909696628215F5F7765627061636B5F726571756972655F5F2E6F286578706F7274732C206E';
wwv_flow_api.g_varchar2_table(269) := '616D652929207B0A2F2A2A2A2A2A2A2F200909094F626A6563742E646566696E6550726F7065727479286578706F7274732C206E616D652C207B20656E756D657261626C653A20747275652C206765743A20676574746572207D293B0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(270) := '2F2009097D0A2F2A2A2A2A2A2A2F20097D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F20646566696E65205F5F65734D6F64756C65206F6E206578706F7274730A2F2A2A2A2A2A2A2F20095F5F7765627061636B5F726571756972655F5F2E';
wwv_flow_api.g_varchar2_table(271) := '72203D2066756E6374696F6E286578706F72747329207B0A2F2A2A2A2A2A2A2F200909696628747970656F662053796D626F6C20213D3D2027756E646566696E6564272026262053796D626F6C2E746F537472696E6754616729207B0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(272) := '2F200909094F626A6563742E646566696E6550726F7065727479286578706F7274732C2053796D626F6C2E746F537472696E675461672C207B2076616C75653A20274D6F64756C6527207D293B0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(273) := '09094F626A6563742E646566696E6550726F7065727479286578706F7274732C20275F5F65734D6F64756C65272C207B2076616C75653A2074727565207D293B0A2F2A2A2A2A2A2A2F20097D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F20';
wwv_flow_api.g_varchar2_table(274) := '63726561746520612066616B65206E616D657370616365206F626A6563740A2F2A2A2A2A2A2A2F20092F2F206D6F6465202620313A2076616C75652069732061206D6F64756C652069642C20726571756972652069740A2F2A2A2A2A2A2A2F20092F2F20';
wwv_flow_api.g_varchar2_table(275) := '6D6F6465202620323A206D6572676520616C6C2070726F70657274696573206F662076616C756520696E746F20746865206E730A2F2A2A2A2A2A2A2F20092F2F206D6F6465202620343A2072657475726E2076616C7565207768656E20616C7265616479';
wwv_flow_api.g_varchar2_table(276) := '206E73206F626A6563740A2F2A2A2A2A2A2A2F20092F2F206D6F6465202620387C313A20626568617665206C696B6520726571756972650A2F2A2A2A2A2A2A2F20095F5F7765627061636B5F726571756972655F5F2E74203D2066756E6374696F6E2876';
wwv_flow_api.g_varchar2_table(277) := '616C75652C206D6F646529207B0A2F2A2A2A2A2A2A2F2009096966286D6F646520262031292076616C7565203D205F5F7765627061636B5F726571756972655F5F2876616C7565293B0A2F2A2A2A2A2A2A2F2009096966286D6F64652026203829207265';
wwv_flow_api.g_varchar2_table(278) := '7475726E2076616C75653B0A2F2A2A2A2A2A2A2F200909696628286D6F6465202620342920262620747970656F662076616C7565203D3D3D20276F626A656374272026262076616C75652026262076616C75652E5F5F65734D6F64756C65292072657475';
wwv_flow_api.g_varchar2_table(279) := '726E2076616C75653B0A2F2A2A2A2A2A2A2F200909766172206E73203D204F626A6563742E637265617465286E756C6C293B0A2F2A2A2A2A2A2A2F2009095F5F7765627061636B5F726571756972655F5F2E72286E73293B0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(280) := '4F626A6563742E646566696E6550726F7065727479286E732C202764656661756C74272C207B20656E756D657261626C653A20747275652C2076616C75653A2076616C7565207D293B0A2F2A2A2A2A2A2A2F2009096966286D6F64652026203220262620';
wwv_flow_api.g_varchar2_table(281) := '747970656F662076616C756520213D2027737472696E67272920666F7228766172206B657920696E2076616C756529205F5F7765627061636B5F726571756972655F5F2E64286E732C206B65792C2066756E6374696F6E286B657929207B207265747572';
wwv_flow_api.g_varchar2_table(282) := '6E2076616C75655B6B65795D3B207D2E62696E64286E756C6C2C206B657929293B0A2F2A2A2A2A2A2A2F20090972657475726E206E733B0A2F2A2A2A2A2A2A2F20097D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F2067657444656661756C';
wwv_flow_api.g_varchar2_table(283) := '744578706F72742066756E6374696F6E20666F7220636F6D7061746962696C6974792077697468206E6F6E2D6861726D6F6E79206D6F64756C65730A2F2A2A2A2A2A2A2F20095F5F7765627061636B5F726571756972655F5F2E6E203D2066756E637469';
wwv_flow_api.g_varchar2_table(284) := '6F6E286D6F64756C6529207B0A2F2A2A2A2A2A2A2F20090976617220676574746572203D206D6F64756C65202626206D6F64756C652E5F5F65734D6F64756C65203F0A2F2A2A2A2A2A2A2F2009090966756E6374696F6E2067657444656661756C742829';
wwv_flow_api.g_varchar2_table(285) := '207B2072657475726E206D6F64756C655B2764656661756C74275D3B207D203A0A2F2A2A2A2A2A2A2F2009090966756E6374696F6E206765744D6F64756C654578706F7274732829207B2072657475726E206D6F64756C653B207D3B0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(286) := '2F2009095F5F7765627061636B5F726571756972655F5F2E64286765747465722C202761272C20676574746572293B0A2F2A2A2A2A2A2A2F20090972657475726E206765747465723B0A2F2A2A2A2A2A2A2F20097D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(287) := '2A2A2A2F20092F2F204F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C0A2F2A2A2A2A2A2A2F20095F5F7765627061636B5F726571756972655F5F2E6F203D2066756E6374696F6E286F626A6563742C2070726F';
wwv_flow_api.g_varchar2_table(288) := '706572747929207B2072657475726E204F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C286F626A6563742C2070726F7065727479293B207D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F205F5F77';
wwv_flow_api.g_varchar2_table(289) := '65627061636B5F7075626C69635F706174685F5F0A2F2A2A2A2A2A2A2F20095F5F7765627061636B5F726571756972655F5F2E70203D2022223B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F205F5F7765627061636B5F686173685F5F0A2F2A';
wwv_flow_api.g_varchar2_table(290) := '2A2A2A2A2A2F20095F5F7765627061636B5F726571756972655F5F2E68203D2066756E6374696F6E2829207B2072657475726E20686F7443757272656E74486173683B207D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F';
wwv_flow_api.g_varchar2_table(291) := '2F204C6F616420656E747279206D6F64756C6520616E642072657475726E206578706F7274730A2F2A2A2A2A2A2A2F200972657475726E20686F7443726561746552657175697265283029285F5F7765627061636B5F726571756972655F5F2E73203D20';
wwv_flow_api.g_varchar2_table(292) := '30293B0A2F2A2A2A2A2A2A2F207D290A2F2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(293) := '287B0A0A2F2A2A2A2F20222E2E2F2E2E2F736F757263652F696D616765732F6A732F676C6F62616C2E6A73223A0A2F2A212A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(294) := '2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A212A5C0A2020212A2A2A20433A2F55736572732F64656E6965646F2F446F63756D656E74732F50726976652F7265706F72745F66696C746572732F736F757263652F696D61';
wwv_flow_api.g_varchar2_table(295) := '6765732F6A732F676C6F62616C2E6A73202A2A2A210A20205C2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(296) := '2A2A2A2A2A2A2A2F0A2F2A21206E6F206578706F7274732070726F7669646564202A2F0A2F2A2A2A2F202866756E6374696F6E286D6F64756C652C205F5F7765627061636B5F6578706F7274735F5F2C205F5F7765627061636B5F726571756972655F5F';
wwv_flow_api.g_varchar2_table(297) := '29207B0A0A2275736520737472696374223B0A6576616C28225F5F7765627061636B5F726571756972655F5F2E72285F5F7765627061636B5F6578706F7274735F5F293B5C6E2F2A206861726D6F6E7920696D706F7274202A2F20766172205F7265706F';
wwv_flow_api.g_varchar2_table(298) := '72745F66696C746572735F5F5745425041434B5F494D504F525445445F4D4F44554C455F305F5F203D205F5F7765627061636B5F726571756972655F5F282F2A21202E2F7265706F72745F66696C74657273202A2F205C222E2E2F2E2E2F736F75726365';
wwv_flow_api.g_varchar2_table(299) := '2F696D616765732F6A732F7265706F72745F66696C746572732E6A735C22293B5C6E5C6E77696E646F772E7270745F66696C74657273203D205F7265706F72745F66696C746572735F5F5745425041434B5F494D504F525445445F4D4F44554C455F305F';
wwv_flow_api.g_varchar2_table(300) := '5F5B5C227265706F72745F66696C746572735C225D3B5C6E5C6E2F2F2320736F7572636555524C3D7765627061636B3A2F2F2F433A2F55736572732F64656E6965646F2F446F63756D656E74732F50726976652F7265706F72745F66696C746572732F73';
wwv_flow_api.g_varchar2_table(301) := '6F757263652F696D616765732F6A732F676C6F62616C2E6A733F22293B0A0A2F2A2A2A2F207D292C0A0A2F2A2A2A2F20222E2E2F2E2E2F736F757263652F696D616765732F6A732F7265706F72745F66696C746572732E6A73223A0A2F2A212A2A2A2A2A';
wwv_flow_api.g_varchar2_table(302) := '2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A212A5C0A2020212A2A2A20433A2F55';
wwv_flow_api.g_varchar2_table(303) := '736572732F64656E6965646F2F446F63756D656E74732F50726976652F7265706F72745F66696C746572732F736F757263652F696D616765732F6A732F7265706F72745F66696C746572732E6A73202A2A2A210A20205C2A2A2A2A2A2A2A2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(304) := '2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2F0A2F2A21206578706F7274732070726F76696465643A';
wwv_flow_api.g_varchar2_table(305) := '207265706F72745F66696C74657273202A2F0A2F2A2A2A2F202866756E6374696F6E286D6F64756C652C205F5F7765627061636B5F6578706F7274735F5F2C205F5F7765627061636B5F726571756972655F5F29207B0A0A227573652073747269637422';
wwv_flow_api.g_varchar2_table(306) := '3B0A6576616C28225F5F7765627061636B5F726571756972655F5F2E72285F5F7765627061636B5F6578706F7274735F5F293B5C6E2F2A206861726D6F6E79206578706F7274202862696E64696E6729202A2F205F5F7765627061636B5F726571756972';
wwv_flow_api.g_varchar2_table(307) := '655F5F2E64285F5F7765627061636B5F6578706F7274735F5F2C205C227265706F72745F66696C746572735C222C2066756E6374696F6E2829207B2072657475726E207265706F72745F66696C746572733B207D293B5C6E2F2A2A5C725C6E202A206672';
wwv_flow_api.g_varchar2_table(308) := '616D65776F726B20666F72207265706F72742066696C7465727320706C7567696E5C725C6E202A2F5C6E636F6E7374207265706F72745F66696C74657273203D20282829203D3E207B5C6E2020636F6E7374206170706C7946696C746572203D20636F6E';
wwv_flow_api.g_varchar2_table(309) := '666967203D3E207B5C6E20202020636F6E6669672E73657474696E6773203D20636F6E6669672E73657474696E67732E6D61702873657474696E67203D3E207B5C6E20202020202073657474696E672E76616C7565203D2024762873657474696E672E69';
wwv_flow_api.g_varchar2_table(310) := '74656D293B5C6E5C6E2020202020206966202873657474696E672E6F70657261746F72203D3D3D20274C494B45272026262073657474696E672E76616C756520213D3D205C225C2229207B5C6E202020202020202073657474696E672E76616C7565203D';
wwv_flow_api.g_varchar2_table(311) := '206025247B73657474696E672E76616C75657D25603B5C6E2020202020207D5C6E5C6E20202020202072657475726E2073657474696E673B5C6E202020207D293B5C6E20202020636F6E73742070726F6D697365203D20617065782E7365727665722E70';
wwv_flow_api.g_varchar2_table(312) := '6C7567696E28636F6E6669672E616A61785F6964656E7469666965722C207B5C6E2020202020207830313A204A534F4E2E737472696E6769667928636F6E666967295C6E202020207D293B5C6E2020202070726F6D6973652E646F6E652872657370203D';
wwv_flow_api.g_varchar2_table(313) := '3E207B5C6E20202020202069662028726573702E7375636365737329207B5C6E2020202020202020617065782E726567696F6E28636F6E6669672E7374617469635F6964292E7265667265736828293B5C6E2020202020207D20656C7365207B5C6E2020';
wwv_flow_api.g_varchar2_table(314) := '20202020202069662028617065782E64656275672E6765744C6576656C2829203D3D3D203429207B5C6E20202020202020202020636F6E736F6C652E6572726F7228726573702E657272293B5C6E20202020202020207D20656C7365207B5C6E20202020';
wwv_flow_api.g_varchar2_table(315) := '202020202020636F6E736F6C652E6572726F7228604572726F7220647572696E6720657865637574696F6E206F662066756E6374696F6E207265706F72742066696C746572732E205475726E206F6E20646562756720666F72206D6F726520696E666F2E';
wwv_flow_api.g_varchar2_table(316) := '60293B5C6E20202020202020207D5C6E2020202020207D5C6E202020207D293B5C6E20207D3B5C6E5C6E202072657475726E207B5C6E202020206170706C7946696C7465725C6E20207D3B5C6E7D2928293B5C6E5C6E5C6E5C6E2F2F2320736F75726365';
wwv_flow_api.g_varchar2_table(317) := '55524C3D7765627061636B3A2F2F2F433A2F55736572732F64656E6965646F2F446F63756D656E74732F50726976652F7265706F72745F66696C746572732F736F757263652F696D616765732F6A732F7265706F72745F66696C746572732E6A733F2229';
wwv_flow_api.g_varchar2_table(318) := '3B0A0A2F2A2A2A2F207D292C0A0A2F2A2A2A2F20303A0A2F2A212A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A212A5C0A2020212A2A2A206D756C7469202E2E2F2E2E2F736F757263';
wwv_flow_api.g_varchar2_table(319) := '652F696D616765732F6A732F676C6F62616C2E6A73202A2A2A210A20205C2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2F0A2F2A21206E6F20737461746963206578706F72747320';
wwv_flow_api.g_varchar2_table(320) := '666F756E64202A2F0A2F2A2A2A2F202866756E6374696F6E286D6F64756C652C206578706F7274732C205F5F7765627061636B5F726571756972655F5F29207B0A0A6576616C28226D6F64756C652E6578706F727473203D205F5F7765627061636B5F72';
wwv_flow_api.g_varchar2_table(321) := '6571756972655F5F282F2A21202E2E2F2E2E2F736F757263652F696D616765732F6A732F676C6F62616C2E6A73202A2F5C222E2E2F2E2E2F736F757263652F696D616765732F6A732F676C6F62616C2E6A735C22293B5C6E5C6E5C6E2F2F2320736F7572';
wwv_flow_api.g_varchar2_table(322) := '636555524C3D7765627061636B3A2F2F2F6D756C74695F2E2E2F2E2E2F736F757263652F696D616765732F6A732F676C6F62616C2E6A733F22293B0A0A2F2A2A2A2F207D290A0A2F2A2A2A2A2A2A2F207D293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11305313471190579)
,p_plugin_id=>wwv_flow_api.id(11105038331496505)
,p_file_name=>'filters.bundle.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2166756E6374696F6E2865297B76617220723D77696E646F772E7765627061636B486F745570646174653B77696E646F772E7765627061636B486F745570646174653D66756E6374696F6E28652C6E297B2166756E6374696F6E28652C72297B69662821';
wwv_flow_api.g_varchar2_table(2) := '4F5B655D7C7C21775B655D2972657475726E3B666F7228766172206E20696E20775B655D3D21312C72294F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C28722C6E29262628765B6E5D3D725B6E5D293B303D3D';
wwv_flow_api.g_varchar2_table(3) := '2D2D622626303D3D3D6D26267828297D28652C6E292C7226267228652C6E297D3B766172206E2C743D21302C6F3D226131343565353161346533343835643531386537222C693D3165342C633D7B7D2C643D5B5D2C613D5B5D3B66756E6374696F6E2073';
wwv_flow_api.g_varchar2_table(4) := '2865297B76617220723D505B655D3B69662821722972657475726E20483B76617220743D66756E6374696F6E2874297B72657475726E20722E686F742E6163746976653F28505B745D3F2D313D3D3D505B745D2E706172656E74732E696E6465784F6628';
wwv_flow_api.g_varchar2_table(5) := '65292626505B745D2E706172656E74732E707573682865293A28643D5B655D2C6E3D74292C2D313D3D3D722E6368696C6472656E2E696E6465784F662874292626722E6368696C6472656E2E70757368287429293A28636F6E736F6C652E7761726E2822';
wwv_flow_api.g_varchar2_table(6) := '5B484D525D20756E6578706563746564207265717569726528222B742B22292066726F6D20646973706F736564206D6F64756C6520222B65292C643D5B5D292C482874297D2C6F3D66756E6374696F6E2865297B72657475726E7B636F6E666967757261';
wwv_flow_api.g_varchar2_table(7) := '626C653A21302C656E756D657261626C653A21302C6765743A66756E6374696F6E28297B72657475726E20485B655D7D2C7365743A66756E6374696F6E2872297B485B655D3D727D7D7D3B666F7228766172206920696E2048294F626A6563742E70726F';
wwv_flow_api.g_varchar2_table(8) := '746F747970652E6861734F776E50726F70657274792E63616C6C28482C69292626226522213D3D692626227422213D3D6926264F626A6563742E646566696E6550726F706572747928742C692C6F286929293B72657475726E20742E653D66756E637469';
wwv_flow_api.g_varchar2_table(9) := '6F6E2865297B72657475726E227265616479223D3D3D7026266628227072657061726522292C6D2B2B2C482E652865292E7468656E28722C2866756E6374696F6E2865297B7468726F77207228292C657D29293B66756E6374696F6E207228297B6D2D2D';
wwv_flow_api.g_varchar2_table(10) := '2C2270726570617265223D3D3D70262628675B655D7C7C442865292C303D3D3D6D2626303D3D3D622626782829297D7D2C742E743D66756E6374696F6E28652C72297B72657475726E20312672262628653D74286529292C482E7428652C2D322672297D';
wwv_flow_api.g_varchar2_table(11) := '2C747D66756E6374696F6E206C2865297B76617220723D7B5F6163636570746564446570656E64656E636965733A7B7D2C5F6465636C696E6564446570656E64656E636965733A7B7D2C5F73656C6641636365707465643A21312C5F73656C664465636C';
wwv_flow_api.g_varchar2_table(12) := '696E65643A21312C5F646973706F736548616E646C6572733A5B5D2C5F6D61696E3A6E213D3D652C6163746976653A21302C6163636570743A66756E6374696F6E28652C6E297B696628766F696420303D3D3D6529722E5F73656C664163636570746564';
wwv_flow_api.g_varchar2_table(13) := '3D21303B656C7365206966282266756E6374696F6E223D3D747970656F66206529722E5F73656C6641636365707465643D653B656C736520696628226F626A656374223D3D747970656F66206529666F722876617220743D303B743C652E6C656E677468';
wwv_flow_api.g_varchar2_table(14) := '3B742B2B29722E5F6163636570746564446570656E64656E636965735B655B745D5D3D6E7C7C66756E6374696F6E28297B7D3B656C736520722E5F6163636570746564446570656E64656E636965735B655D3D6E7C7C66756E6374696F6E28297B7D7D2C';
wwv_flow_api.g_varchar2_table(15) := '6465636C696E653A66756E6374696F6E2865297B696628766F696420303D3D3D6529722E5F73656C664465636C696E65643D21303B656C736520696628226F626A656374223D3D747970656F66206529666F7228766172206E3D303B6E3C652E6C656E67';
wwv_flow_api.g_varchar2_table(16) := '74683B6E2B2B29722E5F6465636C696E6564446570656E64656E636965735B655B6E5D5D3D21303B656C736520722E5F6465636C696E6564446570656E64656E636965735B655D3D21307D2C646973706F73653A66756E6374696F6E2865297B722E5F64';
wwv_flow_api.g_varchar2_table(17) := '6973706F736548616E646C6572732E707573682865297D2C616464446973706F736548616E646C65723A66756E6374696F6E2865297B722E5F646973706F736548616E646C6572732E707573682865297D2C72656D6F7665446973706F736548616E646C';
wwv_flow_api.g_varchar2_table(18) := '65723A66756E6374696F6E2865297B766172206E3D722E5F646973706F736548616E646C6572732E696E6465784F662865293B6E3E3D302626722E5F646973706F736548616E646C6572732E73706C696365286E2C31297D2C636865636B3A6A2C617070';
wwv_flow_api.g_varchar2_table(19) := '6C793A452C7374617475733A66756E6374696F6E2865297B69662821652972657475726E20703B752E707573682865297D2C61646453746174757348616E646C65723A66756E6374696F6E2865297B752E707573682865297D2C72656D6F766553746174';
wwv_flow_api.g_varchar2_table(20) := '757348616E646C65723A66756E6374696F6E2865297B76617220723D752E696E6465784F662865293B723E3D302626752E73706C69636528722C31297D2C646174613A635B655D7D3B72657475726E206E3D766F696420302C727D76617220753D5B5D2C';
wwv_flow_api.g_varchar2_table(21) := '703D2269646C65223B66756E6374696F6E20662865297B703D653B666F722876617220723D303B723C752E6C656E6774683B722B2B29755B725D2E63616C6C286E756C6C2C65297D76617220682C762C792C623D302C6D3D302C673D7B7D2C773D7B7D2C';
wwv_flow_api.g_varchar2_table(22) := '4F3D7B7D3B66756E6374696F6E205F2865297B72657475726E2B652B22223D3D3D653F2B653A657D66756E6374696F6E206A2865297B6966282269646C6522213D3D70297468726F77206E6577204572726F722822636865636B2829206973206F6E6C79';
wwv_flow_api.g_varchar2_table(23) := '20616C6C6F77656420696E2069646C652073746174757322293B72657475726E20743D652C662822636865636B22292C28723D692C723D727C7C3165342C6E65772050726F6D697365282866756E6374696F6E28652C6E297B69662822756E646566696E';
wwv_flow_api.g_varchar2_table(24) := '6564223D3D747970656F6620584D4C48747470526571756573742972657475726E206E286E6577204572726F7228224E6F2062726F7773657220737570706F72742229293B7472797B76617220743D6E657720584D4C48747470526571756573742C693D';
wwv_flow_api.g_varchar2_table(25) := '482E702B22222B6F2B222E686F742D7570646174652E6A736F6E223B742E6F70656E2822474554222C692C2130292C742E74696D656F75743D722C742E73656E64286E756C6C297D63617463682865297B72657475726E206E2865297D742E6F6E726561';
wwv_flow_api.g_varchar2_table(26) := '647973746174656368616E67653D66756E6374696F6E28297B696628343D3D3D742E7265616479537461746529696628303D3D3D742E737461747573296E286E6577204572726F7228224D616E6966657374207265717565737420746F20222B692B2220';
wwv_flow_api.g_varchar2_table(27) := '74696D6564206F75742E2229293B656C7365206966283430343D3D3D742E737461747573296528293B656C736520696628323030213D3D742E7374617475732626333034213D3D742E737461747573296E286E6577204572726F7228224D616E69666573';
wwv_flow_api.g_varchar2_table(28) := '74207265717565737420746F20222B692B22206661696C65642E2229293B656C73657B7472797B76617220723D4A534F4E2E706172736528742E726573706F6E736554657874297D63617463682865297B72657475726E20766F6964206E2865297D6528';
wwv_flow_api.g_varchar2_table(29) := '72297D7D7D2929292E7468656E282866756E6374696F6E2865297B69662821652972657475726E2066282269646C6522292C6E756C6C3B773D7B7D2C673D7B7D2C4F3D652E632C793D652E682C6628227072657061726522293B76617220723D6E657720';
wwv_flow_api.g_varchar2_table(30) := '50726F6D697365282866756E6374696F6E28652C72297B683D7B7265736F6C76653A652C72656A6563743A727D7D29293B763D7B7D3B72657475726E20442830292C2270726570617265223D3D3D702626303D3D3D6D2626303D3D3D6226267828292C72';
wwv_flow_api.g_varchar2_table(31) := '7D29293B76617220727D66756E6374696F6E20442865297B4F5B655D3F28775B655D3D21302C622B2B2C66756E6374696F6E2865297B76617220723D646F63756D656E742E637265617465456C656D656E74282273637269707422293B722E6368617273';
wwv_flow_api.g_varchar2_table(32) := '65743D227574662D38222C722E7372633D482E702B22222B652B222E222B6F2B222E686F742D7570646174652E6A73222C646F63756D656E742E686561642E617070656E644368696C642872297D286529293A675B655D3D21307D66756E6374696F6E20';
wwv_flow_api.g_varchar2_table(33) := '7828297B662822726561647922293B76617220653D683B696628683D6E756C6C2C6529696628742950726F6D6973652E7265736F6C766528292E7468656E282866756E6374696F6E28297B72657475726E20452874297D29292E7468656E282866756E63';
wwv_flow_api.g_varchar2_table(34) := '74696F6E2872297B652E7265736F6C76652872297D292C2866756E6374696F6E2872297B652E72656A6563742872297D29293B656C73657B76617220723D5B5D3B666F7228766172206E20696E2076294F626A6563742E70726F746F747970652E686173';
wwv_flow_api.g_varchar2_table(35) := '4F776E50726F70657274792E63616C6C28762C6E292626722E70757368285F286E29293B652E7265736F6C76652872297D7D66756E6374696F6E20452872297B69662822726561647922213D3D70297468726F77206E6577204572726F7228226170706C';
wwv_flow_api.g_varchar2_table(36) := '792829206973206F6E6C7920616C6C6F77656420696E2072656164792073746174757322293B766172206E2C742C692C612C733B66756E6374696F6E206C2865297B666F722876617220723D5B655D2C6E3D7B7D2C743D722E6D6170282866756E637469';
wwv_flow_api.g_varchar2_table(37) := '6F6E2865297B72657475726E7B636861696E3A5B655D2C69643A657D7D29293B742E6C656E6774683E303B297B766172206F3D742E706F7028292C693D6F2E69642C633D6F2E636861696E3B69662828613D505B695D29262621612E686F742E5F73656C';
wwv_flow_api.g_varchar2_table(38) := '664163636570746564297B696628612E686F742E5F73656C664465636C696E65642972657475726E7B747970653A2273656C662D6465636C696E6564222C636861696E3A632C6D6F64756C6549643A697D3B696628612E686F742E5F6D61696E29726574';
wwv_flow_api.g_varchar2_table(39) := '75726E7B747970653A22756E6163636570746564222C636861696E3A632C6D6F64756C6549643A697D3B666F722876617220643D303B643C612E706172656E74732E6C656E6774683B642B2B297B76617220733D612E706172656E74735B645D2C6C3D50';
wwv_flow_api.g_varchar2_table(40) := '5B735D3B6966286C297B6966286C2E686F742E5F6465636C696E6564446570656E64656E636965735B695D2972657475726E7B747970653A226465636C696E6564222C636861696E3A632E636F6E636174285B735D292C6D6F64756C6549643A692C7061';
wwv_flow_api.g_varchar2_table(41) := '72656E7449643A737D3B2D313D3D3D722E696E6465784F662873292626286C2E686F742E5F6163636570746564446570656E64656E636965735B695D3F286E5B735D7C7C286E5B735D3D5B5D292C75286E5B735D2C5B695D29293A2864656C657465206E';
wwv_flow_api.g_varchar2_table(42) := '5B735D2C722E707573682873292C742E70757368287B636861696E3A632E636F6E636174285B735D292C69643A737D2929297D7D7D7D72657475726E7B747970653A226163636570746564222C6D6F64756C6549643A652C6F757464617465644D6F6475';
wwv_flow_api.g_varchar2_table(43) := '6C65733A722C6F75746461746564446570656E64656E636965733A6E7D7D66756E6374696F6E207528652C72297B666F7228766172206E3D303B6E3C722E6C656E6774683B6E2B2B297B76617220743D725B6E5D3B2D313D3D3D652E696E6465784F6628';
wwv_flow_api.g_varchar2_table(44) := '74292626652E707573682874297D7D723D727C7C7B7D3B76617220683D7B7D2C623D5B5D2C6D3D7B7D2C673D66756E6374696F6E28297B636F6E736F6C652E7761726E28225B484D525D20756E6578706563746564207265717569726528222B6A2E6D6F';
wwv_flow_api.g_varchar2_table(45) := '64756C6549642B222920746F20646973706F736564206D6F64756C6522297D3B666F7228766172207720696E2076296966284F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C28762C7729297B766172206A3B73';
wwv_flow_api.g_varchar2_table(46) := '3D5F2877293B76617220443D21312C783D21312C453D21312C493D22223B73776974636828286A3D765B775D3F6C2873293A7B747970653A22646973706F736564222C6D6F64756C6549643A777D292E636861696E262628493D225C6E55706461746520';
wwv_flow_api.g_varchar2_table(47) := '70726F7061676174696F6E3A20222B6A2E636861696E2E6A6F696E2822202D3E202229292C6A2E74797065297B636173652273656C662D6465636C696E6564223A722E6F6E4465636C696E65642626722E6F6E4465636C696E6564286A292C722E69676E';
wwv_flow_api.g_varchar2_table(48) := '6F72654465636C696E65647C7C28443D6E6577204572726F72282241626F727465642062656361757365206F662073656C66206465636C696E653A20222B6A2E6D6F64756C6549642B4929293B627265616B3B63617365226465636C696E6564223A722E';
wwv_flow_api.g_varchar2_table(49) := '6F6E4465636C696E65642626722E6F6E4465636C696E6564286A292C722E69676E6F72654465636C696E65647C7C28443D6E6577204572726F72282241626F727465642062656361757365206F66206465636C696E656420646570656E64656E63793A20';
wwv_flow_api.g_varchar2_table(50) := '222B6A2E6D6F64756C6549642B2220696E20222B6A2E706172656E7449642B4929293B627265616B3B6361736522756E6163636570746564223A722E6F6E556E61636365707465642626722E6F6E556E6163636570746564286A292C722E69676E6F7265';
wwv_flow_api.g_varchar2_table(51) := '556E61636365707465647C7C28443D6E6577204572726F72282241626F72746564206265636175736520222B732B22206973206E6F74206163636570746564222B4929293B627265616B3B63617365226163636570746564223A722E6F6E416363657074';
wwv_flow_api.g_varchar2_table(52) := '65642626722E6F6E4163636570746564286A292C783D21303B627265616B3B6361736522646973706F736564223A722E6F6E446973706F7365642626722E6F6E446973706F736564286A292C453D21303B627265616B3B64656661756C743A7468726F77';
wwv_flow_api.g_varchar2_table(53) := '206E6577204572726F722822556E657863657074696F6E207479706520222B6A2E74797065297D696628442972657475726E2066282261626F727422292C50726F6D6973652E72656A6563742844293B6966287829666F72287320696E206D5B735D3D76';
wwv_flow_api.g_varchar2_table(54) := '5B735D2C7528622C6A2E6F757464617465644D6F64756C6573292C6A2E6F75746461746564446570656E64656E63696573294F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C286A2E6F75746461746564446570';
wwv_flow_api.g_varchar2_table(55) := '656E64656E636965732C7329262628685B735D7C7C28685B735D3D5B5D292C7528685B735D2C6A2E6F75746461746564446570656E64656E636965735B735D29293B452626287528622C5B6A2E6D6F64756C6549645D292C6D5B735D3D67297D76617220';
wwv_flow_api.g_varchar2_table(56) := '6B2C4D3D5B5D3B666F7228743D303B743C622E6C656E6774683B742B2B29733D625B745D2C505B735D2626505B735D2E686F742E5F73656C66416363657074656426266D5B735D213D3D6726264D2E70757368287B6D6F64756C653A732C6572726F7248';
wwv_flow_api.g_varchar2_table(57) := '616E646C65723A505B735D2E686F742E5F73656C6641636365707465647D293B662822646973706F736522292C4F626A6563742E6B657973284F292E666F7245616368282866756E6374696F6E2865297B21313D3D3D4F5B655D262666756E6374696F6E';
wwv_flow_api.g_varchar2_table(58) := '2865297B64656C65746520696E7374616C6C65644368756E6B735B655D7D2865297D29293B666F722876617220412C532C553D622E736C69636528293B552E6C656E6774683E303B29696628733D552E706F7028292C613D505B735D297B76617220713D';
wwv_flow_api.g_varchar2_table(59) := '7B7D2C543D612E686F742E5F646973706F736548616E646C6572733B666F7228693D303B693C542E6C656E6774683B692B2B29286E3D545B695D292871293B666F7228635B735D3D712C612E686F742E6163746976653D21312C64656C65746520505B73';
wwv_flow_api.g_varchar2_table(60) := '5D2C64656C65746520685B735D2C693D303B693C612E6368696C6472656E2E6C656E6774683B692B2B297B766172204C3D505B612E6368696C6472656E5B695D5D3B4C262628286B3D4C2E706172656E74732E696E6465784F66287329293E3D3026264C';
wwv_flow_api.g_varchar2_table(61) := '2E706172656E74732E73706C696365286B2C3129297D7D666F72287320696E2068296966284F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C28682C7329262628613D505B735D2929666F7228533D685B735D2C';
wwv_flow_api.g_varchar2_table(62) := '693D303B693C532E6C656E6774683B692B2B29413D535B695D2C286B3D612E6368696C6472656E2E696E6465784F66284129293E3D302626612E6368696C6472656E2E73706C696365286B2C31293B666F72287320696E206628226170706C7922292C6F';
wwv_flow_api.g_varchar2_table(63) := '3D792C6D294F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C286D2C7329262628655B735D3D6D5B735D293B76617220523D6E756C6C3B666F72287320696E2068296966284F626A6563742E70726F746F747970';
wwv_flow_api.g_varchar2_table(64) := '652E6861734F776E50726F70657274792E63616C6C28682C7329262628613D505B735D29297B533D685B735D3B766172204E3D5B5D3B666F7228743D303B743C532E6C656E6774683B742B2B29696628413D535B745D2C6E3D612E686F742E5F61636365';
wwv_flow_api.g_varchar2_table(65) := '70746564446570656E64656E636965735B415D297B6966282D31213D3D4E2E696E6465784F66286E2929636F6E74696E75653B4E2E70757368286E297D666F7228743D303B743C4E2E6C656E6774683B742B2B297B6E3D4E5B745D3B7472797B6E285329';
wwv_flow_api.g_varchar2_table(66) := '7D63617463682865297B722E6F6E4572726F7265642626722E6F6E4572726F726564287B747970653A226163636570742D6572726F726564222C6D6F64756C6549643A732C646570656E64656E637949643A535B745D2C6572726F723A657D292C722E69';
wwv_flow_api.g_varchar2_table(67) := '676E6F72654572726F7265647C7C527C7C28523D65297D7D7D666F7228743D303B743C4D2E6C656E6774683B742B2B297B76617220433D4D5B745D3B733D432E6D6F64756C652C643D5B735D3B7472797B482873297D63617463682865297B6966282266';
wwv_flow_api.g_varchar2_table(68) := '756E6374696F6E223D3D747970656F6620432E6572726F7248616E646C6572297472797B432E6572726F7248616E646C65722865297D6361746368286E297B722E6F6E4572726F7265642626722E6F6E4572726F726564287B747970653A2273656C662D';
wwv_flow_api.g_varchar2_table(69) := '6163636570742D6572726F722D68616E646C65722D6572726F726564222C6D6F64756C6549643A732C6572726F723A6E2C6F726967696E616C4572726F723A657D292C722E69676E6F72654572726F7265647C7C527C7C28523D6E292C527C7C28523D65';
wwv_flow_api.g_varchar2_table(70) := '297D656C736520722E6F6E4572726F7265642626722E6F6E4572726F726564287B747970653A2273656C662D6163636570742D6572726F726564222C6D6F64756C6549643A732C6572726F723A657D292C722E69676E6F72654572726F7265647C7C527C';
wwv_flow_api.g_varchar2_table(71) := '7C28523D65297D7D72657475726E20523F286628226661696C22292C50726F6D6973652E72656A656374285229293A2866282269646C6522292C6E65772050726F6D697365282866756E6374696F6E2865297B652862297D2929297D76617220503D7B7D';
wwv_flow_api.g_varchar2_table(72) := '3B66756E6374696F6E20482872297B696628505B725D2972657475726E20505B725D2E6578706F7274733B766172206E3D505B725D3D7B693A722C6C3A21312C6578706F7274733A7B7D2C686F743A6C2872292C706172656E74733A28613D642C643D5B';
wwv_flow_api.g_varchar2_table(73) := '5D2C61292C6368696C6472656E3A5B5D7D3B72657475726E20655B725D2E63616C6C286E2E6578706F7274732C6E2C6E2E6578706F7274732C73287229292C6E2E6C3D21302C6E2E6578706F7274737D482E6D3D652C482E633D502C482E643D66756E63';
wwv_flow_api.g_varchar2_table(74) := '74696F6E28652C722C6E297B482E6F28652C72297C7C4F626A6563742E646566696E6550726F706572747928652C722C7B656E756D657261626C653A21302C6765743A6E7D297D2C482E723D66756E6374696F6E2865297B22756E646566696E65642221';
wwv_flow_api.g_varchar2_table(75) := '3D747970656F662053796D626F6C262653796D626F6C2E746F537472696E6754616726264F626A6563742E646566696E6550726F706572747928652C53796D626F6C2E746F537472696E675461672C7B76616C75653A224D6F64756C65227D292C4F626A';
wwv_flow_api.g_varchar2_table(76) := '6563742E646566696E6550726F706572747928652C225F5F65734D6F64756C65222C7B76616C75653A21307D297D2C482E743D66756E6374696F6E28652C72297B696628312672262628653D48286529292C3826722972657475726E20653B6966283426';
wwv_flow_api.g_varchar2_table(77) := '722626226F626A656374223D3D747970656F6620652626652626652E5F5F65734D6F64756C652972657475726E20653B766172206E3D4F626A6563742E637265617465286E756C6C293B696628482E72286E292C4F626A6563742E646566696E6550726F';
wwv_flow_api.g_varchar2_table(78) := '7065727479286E2C2264656661756C74222C7B656E756D657261626C653A21302C76616C75653A657D292C322672262622737472696E6722213D747970656F66206529666F7228766172207420696E206529482E64286E2C742C66756E6374696F6E2872';
wwv_flow_api.g_varchar2_table(79) := '297B72657475726E20655B725D7D2E62696E64286E756C6C2C7429293B72657475726E206E7D2C482E6E3D66756E6374696F6E2865297B76617220723D652626652E5F5F65734D6F64756C653F66756E6374696F6E28297B72657475726E20652E646566';
wwv_flow_api.g_varchar2_table(80) := '61756C747D3A66756E6374696F6E28297B72657475726E20657D3B72657475726E20482E6428722C2261222C72292C727D2C482E6F3D66756E6374696F6E28652C72297B72657475726E204F626A6563742E70726F746F747970652E6861734F776E5072';
wwv_flow_api.g_varchar2_table(81) := '6F70657274792E63616C6C28652C72297D2C482E703D22222C482E683D66756E6374696F6E28297B72657475726E206F7D2C7328302928482E733D30297D285B66756E6374696F6E28652C722C6E297B652E6578706F7274733D6E2831297D2C66756E63';
wwv_flow_api.g_varchar2_table(82) := '74696F6E28652C722C6E297B2275736520737472696374223B6E2E722872293B636F6E737420743D7B6170706C7946696C7465723A653D3E7B652E73657474696E67733D652E73657474696E67732E6D617028653D3E28652E76616C75653D247628652E';
wwv_flow_api.g_varchar2_table(83) := '6974656D292C224C494B45223D3D3D652E6F70657261746F7226262222213D3D652E76616C7565262628652E76616C75653D6025247B652E76616C75657D2560292C6529292C617065782E7365727665722E706C7567696E28652E616A61785F6964656E';
wwv_flow_api.g_varchar2_table(84) := '7469666965722C7B7830313A4A534F4E2E737472696E676966792865297D292E646F6E6528723D3E7B722E737563636573733F617065782E726567696F6E28652E7374617469635F6964292E7265667265736828293A343D3D3D617065782E6465627567';
wwv_flow_api.g_varchar2_table(85) := '2E6765744C6576656C28293F636F6E736F6C652E6572726F7228722E657272293A636F6E736F6C652E6572726F7228224572726F7220647572696E6720657865637574696F6E206F662066756E6374696F6E207265706F72742066696C746572732E2054';
wwv_flow_api.g_varchar2_table(86) := '75726E206F6E20646562756720666F72206D6F726520696E666F2E22297D297D7D3B77696E646F772E7270745F66696C746572733D747D5D293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11305645052190582)
,p_plugin_id=>wwv_flow_api.id(11105038331496505)
,p_file_name=>'filters.bundle.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/dynamic_action/deniedo_report_filters_code
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(11318940068656509)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'DENIEDO.REPORT_FILTERS_CODE'
,p_display_name=>'report_filters_code'
,p_category=>'COMPONENT'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','DENIEDO.REPORT_FILTERS_CODE'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
' /**',
'   * @private',
'   * Set report filters',
'   *',
'   * @param p_config : configuration JSON of report filters',
'  **/',
'  procedure set_report_filters ',
'    ( p_config in clob )',
'  is',
'    l_region_id apex_application_page_regions.region_id%type;',
'    l_return_json clob;',
'  begin',
'    --- parse config json',
'    apex_json.parse( p_config );',
'',
'    --- get the region id',
'    l_region_id := apex_json.get_number( p_path => ''region_id'');',
'',
'    --- reset existing filters',
'    apex_ir.reset_report',
'      ( p_page_id => apex_json.get_number( p_path => ''page_id'' )',
'      , p_region_id => l_region_id',
'      , p_report_alias => null',
'      );',
'',
'    --- loop over the filters',
'    for i in 1..apex_json.get_count(''settings'') loop',
'      apex_ir.add_filter',
'        ( p_page_id => apex_json.get_number(''page_id'')',
'        , p_region_id => l_region_id',
'        , p_report_column => apex_json.get_varchar2( ''settings[%d].column'', i)',
'        , p_filter_value  => apex_json.get_varchar2( ''settings[%d].value'', i)',
'        , p_operator_abbr => apex_json.get_varchar2( ''settings[%d].operator'', i)',
'        , p_report_alias  => null );',
'    end loop;',
'',
'    --- compile the response json',
'    apex_json.free_output;',
'    apex_json.initialize_clob_output;',
'',
'    apex_json.open_object;',
'    apex_json.write(''success'', true );',
'    apex_json.close_object;',
'',
'    l_return_json := apex_json.get_clob_output;',
'',
'    apex_json.free_output;',
'',
'    htp.prn( l_return_json );',
'    ',
'  exception',
'    when others then',
'      apex_json.free_output;',
'      apex_json.initialize_clob_output;',
'',
'      apex_json.open_object;',
'      apex_json.write(''success'', false );',
'      apex_json.open_object(''err'');',
'      apex_json.write(''code'', sqlcode );',
'      apex_json.write(''message'', sqlerrm );',
'      apex_json.write(''backtrace'', dbms_utility.format_error_backtrace );',
'      apex_json.close_all;',
'',
'      l_return_json := apex_json.get_clob_output;',
'      apex_json.free_output;',
'',
'      htp.prn( l_return_json );',
'    ',
'  end set_report_filters;',
'  -------------------------------------------------------',
'  /**',
'   * @private',
'   * Get the affected region that is indicated in the plugin',
'   *',
'   * @param p_action_id :',
'   * @param p_return_type :',
'   *',
'   * @return The affected region from the plugin',
'  **/',
'  function get_affected_region',
'    ( p_action_id in apex_application_page_da_acts.action_id%type ',
'    , p_return_type in varchar2 )',
'    return varchar2',
'  is ',
'    l_static_id apex_application_page_da_acts.affected_region%type;',
'    l_region_id apex_application_page_da_acts.affected_region_id%type;',
'  begin ',
'    select apre.static_id',
'         , apda.affected_region_id',
'      into l_static_id',
'         , l_region_id',
'      from apex_application_page_da_acts apda ',
'      join apex_application_page_regions apre on ( apda.affected_region_id = apre.region_id)',
'     where action_id = p_action_id;',
'  ',
'    case p_return_type',
'      when ''REGION'' then',
'        return l_region_id;',
'      when ''STATIC'' then ',
'        return l_static_id;',
'    end case;',
'  end get_affected_region;',
'  -------------------------------------------------------',
'  function render_filters',
'    ( p_dynamic_action in apex_plugin.t_dynamic_action ',
'    , p_plugin         in apex_plugin.t_plugin )',
'  return apex_plugin.t_dynamic_action_render_result',
'  is',
'    l_result       apex_plugin.t_dynamic_action_render_result; ',
'    l_filter_items varchar2(32767) := p_dynamic_action.attribute_01;',
'    l_config       clob;',
'  begin',
'    -- Debug',
'    IF apex_application.g_debug THEN',
'      apex_plugin_util.debug_dynamic_action',
'        ( p_plugin         => p_plugin',
'        , p_dynamic_action => p_dynamic_action);',
'    END IF;',
'    ---- transform into json object',
'    apex_json.free_output;',
'    apex_json.initialize_clob_output;',
'',
'    apex_json.open_object;',
'    apex_json.write(''static_id'', get_affected_region( p_dynamic_action.id, ''STATIC''), true );',
'    apex_json.write(''region_id'', get_affected_region( p_dynamic_action.id, ''REGION''), true );',
'    apex_json.write(''ajax_identifier'', apex_plugin.get_ajax_identifier, true);',
'    apex_json.write(''app_id'', v(''APP_ID''), true );',
'    apex_json.write(''page_id'', v(''APP_PAGE_ID''), true );',
'    ',
'    apex_json.close_all;',
'',
'    l_config := apex_json.get_clob_output;',
'    apex_json.free_output;',
'',
'    apex_javascript.add_library',
'      ( p_name                  => ''filters.bundle#MIN#''',
'      , p_directory             => p_plugin.file_prefix ',
'      , p_check_to_add_minified => false );',
'',
'    l_result.javascript_function := ''function() {',
'        const config = '' || l_config || '';',
'        config.settings = '' || l_filter_items || '';',
'        rpt_filters.applyFilter(config);',
'        }'';',
'    return l_result;',
'  end render_filters;',
'  ----------------------------------------------',
'  function ajax_filters',
'    ( p_dynamic_action in apex_plugin.t_dynamic_action',
'    , p_plugin         in apex_plugin.t_plugin )',
'  return apex_plugin.t_dynamic_action_ajax_result',
'  is ',
'    l_result apex_plugin.t_dynamic_action_ajax_result;',
'  begin ',
'    set_report_filters( p_config => apex_application.g_x01 );',
'',
'    return l_result;',
'  end ajax_filters;'))
,p_api_version=>2
,p_render_function=>'render_filters'
,p_ajax_function=>'ajax_filters'
,p_standard_attributes=>'REGION:REQUIRED:ONLOAD'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'v1.0.2'
,p_about_url=>'https://rxzwovgxaqhm6at-dbdomi.adb.eu-frankfurt-1.oraclecloudapps.com/ords/f?p=100:2'
,p_files_version=>17
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11319193148656511)
,p_plugin_id=>wwv_flow_api.id(11318940068656509)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'filter items'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The settings for this plugin should be entered following the example below:<br/>',
'<br/>',
'[',
'  { ',
'    "operator": "LIKE",',
'    "item": "P1000_ITEM_1",',
'    "column": "COLUMN1"',
'  },',
'  {  ',
'    "operator": "EQ",',
'    "item": "P1000_ITEM_2",',
'    "column": "COLUMN2"',
'  }',
']',
'<br/>',
'The following operators can be used',
'<br/>',
'',
'<ul>',
'  <li>LIKE - SQL like operator</li>',
'  <li>NLIKE - Not like</li>',
'  <li>LT - Less than</li>',
'  <li>GT - Greater than</li>',
'  <li>EQ - Equals to</li>',
'  <li>NEQ - Not equals</li>',
'</ul>'))
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A2A2A2A2A2F202866756E6374696F6E286D6F64756C657329207B202F2F207765627061636B426F6F7473747261700A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F74446973706F73654368756E6B286368756E6B496429207B0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(2) := '2A2A2A2F20090964656C65746520696E7374616C6C65644368756E6B735B6368756E6B49645D3B0A2F2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F200976617220706172656E74486F7455706461746543616C6C6261636B203D2077696E646F775B22';
wwv_flow_api.g_varchar2_table(3) := '7765627061636B486F74557064617465225D3B0A2F2A2A2A2A2A2A2F200977696E646F775B227765627061636B486F74557064617465225D203D202F2F2065736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D756E757365642D766172';
wwv_flow_api.g_varchar2_table(4) := '730A2F2A2A2A2A2A2A2F200966756E6374696F6E207765627061636B486F7455706461746543616C6C6261636B286368756E6B49642C206D6F72654D6F64756C657329207B0A2F2A2A2A2A2A2A2F200909686F744164645570646174654368756E6B2863';
wwv_flow_api.g_varchar2_table(5) := '68756E6B49642C206D6F72654D6F64756C6573293B0A2F2A2A2A2A2A2A2F20090969662028706172656E74486F7455706461746543616C6C6261636B2920706172656E74486F7455706461746543616C6C6261636B286368756E6B49642C206D6F72654D';
wwv_flow_api.g_varchar2_table(6) := '6F64756C6573293B0A2F2A2A2A2A2A2A2F20097D203B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F2065736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D756E757365642D766172730A2F2A2A2A2A2A2A2F200966756E6374';
wwv_flow_api.g_varchar2_table(7) := '696F6E20686F74446F776E6C6F61645570646174654368756E6B286368756E6B496429207B0A2F2A2A2A2A2A2A2F20090976617220736372697074203D20646F63756D656E742E637265617465456C656D656E74282273637269707422293B0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(8) := '2A2A2A2F2009097363726970742E63686172736574203D20227574662D38223B0A2F2A2A2A2A2A2A2F2009097363726970742E737263203D205F5F7765627061636B5F726571756972655F5F2E70202B202222202B206368756E6B4964202B20222E2220';
wwv_flow_api.g_varchar2_table(9) := '2B20686F7443757272656E7448617368202B20222E686F742D7570646174652E6A73223B0A2F2A2A2A2A2A2A2F200909696620286E756C6C29207363726970742E63726F73734F726967696E203D206E756C6C3B0A2F2A2A2A2A2A2A2F200909646F6375';
wwv_flow_api.g_varchar2_table(10) := '6D656E742E686561642E617070656E644368696C6428736372697074293B0A2F2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F2065736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D756E757365642D';
wwv_flow_api.g_varchar2_table(11) := '766172730A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F74446F776E6C6F61644D616E6966657374287265717565737454696D656F757429207B0A2F2A2A2A2A2A2A2F2009097265717565737454696D656F7574203D207265717565737454696D';
wwv_flow_api.g_varchar2_table(12) := '656F7574207C7C2031303030303B0A2F2A2A2A2A2A2A2F20090972657475726E206E65772050726F6D6973652866756E6374696F6E287265736F6C76652C2072656A65637429207B0A2F2A2A2A2A2A2A2F2009090969662028747970656F6620584D4C48';
wwv_flow_api.g_varchar2_table(13) := '74747052657175657374203D3D3D2022756E646566696E65642229207B0A2F2A2A2A2A2A2A2F200909090972657475726E2072656A656374286E6577204572726F7228224E6F2062726F7773657220737570706F72742229293B0A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(14) := '0909097D0A2F2A2A2A2A2A2A2F20090909747279207B0A2F2A2A2A2A2A2A2F20090909097661722072657175657374203D206E657720584D4C487474705265717565737428293B0A2F2A2A2A2A2A2A2F2009090909766172207265717565737450617468';
wwv_flow_api.g_varchar2_table(15) := '203D205F5F7765627061636B5F726571756972655F5F2E70202B202222202B20686F7443757272656E7448617368202B20222E686F742D7570646174652E6A736F6E223B0A2F2A2A2A2A2A2A2F2009090909726571756573742E6F70656E282247455422';
wwv_flow_api.g_varchar2_table(16) := '2C2072657175657374506174682C2074727565293B0A2F2A2A2A2A2A2A2F2009090909726571756573742E74696D656F7574203D207265717565737454696D656F75743B0A2F2A2A2A2A2A2A2F2009090909726571756573742E73656E64286E756C6C29';
wwv_flow_api.g_varchar2_table(17) := '3B0A2F2A2A2A2A2A2A2F200909097D206361746368202865727229207B0A2F2A2A2A2A2A2A2F200909090972657475726E2072656A65637428657272293B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F20090909726571756573742E6F6E72';
wwv_flow_api.g_varchar2_table(18) := '6561647973746174656368616E6765203D2066756E6374696F6E2829207B0A2F2A2A2A2A2A2A2F200909090969662028726571756573742E7265616479537461746520213D3D2034292072657475726E3B0A2F2A2A2A2A2A2A2F20090909096966202872';
wwv_flow_api.g_varchar2_table(19) := '6571756573742E737461747573203D3D3D203029207B0A2F2A2A2A2A2A2A2F2009090909092F2F2074696D656F75740A2F2A2A2A2A2A2A2F20090909090972656A656374280A2F2A2A2A2A2A2A2F200909090909096E6577204572726F7228224D616E69';
wwv_flow_api.g_varchar2_table(20) := '66657374207265717565737420746F2022202B207265717565737450617468202B20222074696D6564206F75742E22290A2F2A2A2A2A2A2A2F200909090909293B0A2F2A2A2A2A2A2A2F20090909097D20656C73652069662028726571756573742E7374';
wwv_flow_api.g_varchar2_table(21) := '61747573203D3D3D2034303429207B0A2F2A2A2A2A2A2A2F2009090909092F2F206E6F2075706461746520617661696C61626C650A2F2A2A2A2A2A2A2F2009090909097265736F6C766528293B0A2F2A2A2A2A2A2A2F20090909097D20656C7365206966';
wwv_flow_api.g_varchar2_table(22) := '2028726571756573742E73746174757320213D3D2032303020262620726571756573742E73746174757320213D3D2033303429207B0A2F2A2A2A2A2A2A2F2009090909092F2F206F74686572206661696C7572650A2F2A2A2A2A2A2A2F20090909090972';
wwv_flow_api.g_varchar2_table(23) := '656A656374286E6577204572726F7228224D616E6966657374207265717565737420746F2022202B207265717565737450617468202B2022206661696C65642E2229293B0A2F2A2A2A2A2A2A2F20090909097D20656C7365207B0A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(24) := '09090909092F2F20737563636573730A2F2A2A2A2A2A2A2F200909090909747279207B0A2F2A2A2A2A2A2A2F2009090909090976617220757064617465203D204A534F4E2E706172736528726571756573742E726573706F6E736554657874293B0A2F2A';
wwv_flow_api.g_varchar2_table(25) := '2A2A2A2A2A2F2009090909097D20636174636820286529207B0A2F2A2A2A2A2A2A2F2009090909090972656A6563742865293B0A2F2A2A2A2A2A2A2F2009090909090972657475726E3B0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(26) := '09090909097265736F6C766528757064617465293B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D3B0A2F2A2A2A2A2A2A2F2009097D293B0A2F2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20097661';
wwv_flow_api.g_varchar2_table(27) := '7220686F744170706C794F6E557064617465203D20747275653B0A2F2A2A2A2A2A2A2F20092F2F2065736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D756E757365642D766172730A2F2A2A2A2A2A2A2F200976617220686F74437572';
wwv_flow_api.g_varchar2_table(28) := '72656E7448617368203D20223564353866353638316364343132633165386639223B0A2F2A2A2A2A2A2A2F200976617220686F745265717565737454696D656F7574203D2031303030303B0A2F2A2A2A2A2A2A2F200976617220686F7443757272656E74';
wwv_flow_api.g_varchar2_table(29) := '4D6F64756C6544617461203D207B7D3B0A2F2A2A2A2A2A2A2F200976617220686F7443757272656E744368696C644D6F64756C653B0A2F2A2A2A2A2A2A2F20092F2F2065736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D756E757365';
wwv_flow_api.g_varchar2_table(30) := '642D766172730A2F2A2A2A2A2A2A2F200976617220686F7443757272656E74506172656E7473203D205B5D3B0A2F2A2A2A2A2A2A2F20092F2F2065736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D756E757365642D766172730A2F2A';
wwv_flow_api.g_varchar2_table(31) := '2A2A2A2A2A2F200976617220686F7443757272656E74506172656E747354656D70203D205B5D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F2065736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D756E757365642D766172';
wwv_flow_api.g_varchar2_table(32) := '730A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F7443726561746552657175697265286D6F64756C65496429207B0A2F2A2A2A2A2A2A2F200909766172206D65203D20696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D3B0A2F2A';
wwv_flow_api.g_varchar2_table(33) := '2A2A2A2A2A2F20090969662028216D65292072657475726E205F5F7765627061636B5F726571756972655F5F3B0A2F2A2A2A2A2A2A2F20090976617220666E203D2066756E6374696F6E287265717565737429207B0A2F2A2A2A2A2A2A2F200909096966';
wwv_flow_api.g_varchar2_table(34) := '20286D652E686F742E61637469766529207B0A2F2A2A2A2A2A2A2F200909090969662028696E7374616C6C65644D6F64756C65735B726571756573745D29207B0A2F2A2A2A2A2A2A2F20090909090969662028696E7374616C6C65644D6F64756C65735B';
wwv_flow_api.g_varchar2_table(35) := '726571756573745D2E706172656E74732E696E6465784F66286D6F64756C65496429203D3D3D202D3129207B0A2F2A2A2A2A2A2A2F20090909090909696E7374616C6C65644D6F64756C65735B726571756573745D2E706172656E74732E70757368286D';
wwv_flow_api.g_varchar2_table(36) := '6F64756C654964293B0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F20090909097D20656C7365207B0A2F2A2A2A2A2A2A2F200909090909686F7443757272656E74506172656E7473203D205B6D6F64756C6549645D3B0A2F2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(37) := '2A2F200909090909686F7443757272656E744368696C644D6F64756C65203D20726571756573743B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F2009090909696620286D652E6368696C6472656E2E696E6465784F662872657175657374';
wwv_flow_api.g_varchar2_table(38) := '29203D3D3D202D3129207B0A2F2A2A2A2A2A2A2F2009090909096D652E6368696C6472656E2E707573682872657175657374293B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D20656C7365207B0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(39) := '0909636F6E736F6C652E7761726E280A2F2A2A2A2A2A2A2F200909090909225B484D525D20756E657870656374656420726571756972652822202B0A2F2A2A2A2A2A2A2F2009090909090972657175657374202B0A2F2A2A2A2A2A2A2F20090909090909';
wwv_flow_api.g_varchar2_table(40) := '22292066726F6D20646973706F736564206D6F64756C652022202B0A2F2A2A2A2A2A2A2F200909090909096D6F64756C6549640A2F2A2A2A2A2A2A2F2009090909293B0A2F2A2A2A2A2A2A2F2009090909686F7443757272656E74506172656E7473203D';
wwv_flow_api.g_varchar2_table(41) := '205B5D3B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009090972657475726E205F5F7765627061636B5F726571756972655F5F2872657175657374293B0A2F2A2A2A2A2A2A2F2009097D3B0A2F2A2A2A2A2A2A2F200909766172204F626A';
wwv_flow_api.g_varchar2_table(42) := '656374466163746F7279203D2066756E6374696F6E204F626A656374466163746F7279286E616D6529207B0A2F2A2A2A2A2A2A2F2009090972657475726E207B0A2F2A2A2A2A2A2A2F2009090909636F6E666967757261626C653A20747275652C0A2F2A';
wwv_flow_api.g_varchar2_table(43) := '2A2A2A2A2A2F2009090909656E756D657261626C653A20747275652C0A2F2A2A2A2A2A2A2F20090909096765743A2066756E6374696F6E2829207B0A2F2A2A2A2A2A2A2F20090909090972657475726E205F5F7765627061636B5F726571756972655F5F';
wwv_flow_api.g_varchar2_table(44) := '5B6E616D655D3B0A2F2A2A2A2A2A2A2F20090909097D2C0A2F2A2A2A2A2A2A2F20090909097365743A2066756E6374696F6E2876616C756529207B0A2F2A2A2A2A2A2A2F2009090909095F5F7765627061636B5F726571756972655F5F5B6E616D655D20';
wwv_flow_api.g_varchar2_table(45) := '3D2076616C75653B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D3B0A2F2A2A2A2A2A2A2F2009097D3B0A2F2A2A2A2A2A2A2F200909666F722028766172206E616D6520696E205F5F7765627061636B5F726571756972655F5F';
wwv_flow_api.g_varchar2_table(46) := '29207B0A2F2A2A2A2A2A2A2F20090909696620280A2F2A2A2A2A2A2A2F20090909094F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C285F5F7765627061636B5F726571756972655F5F2C206E616D6529202626';
wwv_flow_api.g_varchar2_table(47) := '0A2F2A2A2A2A2A2A2F20090909096E616D6520213D3D202265222026260A2F2A2A2A2A2A2A2F20090909096E616D6520213D3D202274220A2F2A2A2A2A2A2A2F2009090929207B0A2F2A2A2A2A2A2A2F20090909094F626A6563742E646566696E655072';
wwv_flow_api.g_varchar2_table(48) := '6F706572747928666E2C206E616D652C204F626A656374466163746F7279286E616D6529293B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F200909666E2E65203D2066756E6374696F6E286368756E6B4964';
wwv_flow_api.g_varchar2_table(49) := '29207B0A2F2A2A2A2A2A2A2F2009090969662028686F74537461747573203D3D3D20227265616479222920686F7453657453746174757328227072657061726522293B0A2F2A2A2A2A2A2A2F20090909686F744368756E6B734C6F6164696E672B2B3B0A';
wwv_flow_api.g_varchar2_table(50) := '2F2A2A2A2A2A2A2F2009090972657475726E205F5F7765627061636B5F726571756972655F5F2E65286368756E6B4964292E7468656E2866696E6973684368756E6B4C6F6164696E672C2066756E6374696F6E2865727229207B0A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(51) := '0909090966696E6973684368756E6B4C6F6164696E6728293B0A2F2A2A2A2A2A2A2F20090909097468726F77206572723B0A2F2A2A2A2A2A2A2F200909097D293B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009090966756E6374696F6E2066696E69';
wwv_flow_api.g_varchar2_table(52) := '73684368756E6B4C6F6164696E672829207B0A2F2A2A2A2A2A2A2F2009090909686F744368756E6B734C6F6164696E672D2D3B0A2F2A2A2A2A2A2A2F200909090969662028686F74537461747573203D3D3D2022707265706172652229207B0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(53) := '2A2A2A2F2009090909096966202821686F7457616974696E6746696C65734D61705B6368756E6B49645D29207B0A2F2A2A2A2A2A2A2F20090909090909686F74456E737572655570646174654368756E6B286368756E6B4964293B0A2F2A2A2A2A2A2A2F';
wwv_flow_api.g_varchar2_table(54) := '2009090909097D0A2F2A2A2A2A2A2A2F20090909090969662028686F744368756E6B734C6F6164696E67203D3D3D203020262620686F7457616974696E6746696C6573203D3D3D203029207B0A2F2A2A2A2A2A2A2F20090909090909686F745570646174';
wwv_flow_api.g_varchar2_table(55) := '65446F776E6C6F6164656428293B0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D3B0A2F2A2A2A2A2A2A2F200909666E2E74203D2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(56) := '2876616C75652C206D6F646529207B0A2F2A2A2A2A2A2A2F20090909696620286D6F646520262031292076616C7565203D20666E2876616C7565293B0A2F2A2A2A2A2A2A2F2009090972657475726E205F5F7765627061636B5F726571756972655F5F2E';
wwv_flow_api.g_varchar2_table(57) := '742876616C75652C206D6F64652026207E31293B0A2F2A2A2A2A2A2A2F2009097D3B0A2F2A2A2A2A2A2A2F20090972657475726E20666E3B0A2F2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F2065736C696E742D6469';
wwv_flow_api.g_varchar2_table(58) := '7361626C652D6E6578742D6C696E65206E6F2D756E757365642D766172730A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F744372656174654D6F64756C65286D6F64756C65496429207B0A2F2A2A2A2A2A2A2F20090976617220686F74203D207B';
wwv_flow_api.g_varchar2_table(59) := '0A2F2A2A2A2A2A2A2F200909092F2F20707269766174652073747566660A2F2A2A2A2A2A2A2F200909095F6163636570746564446570656E64656E636965733A207B7D2C0A2F2A2A2A2A2A2A2F200909095F6465636C696E6564446570656E64656E6369';
wwv_flow_api.g_varchar2_table(60) := '65733A207B7D2C0A2F2A2A2A2A2A2A2F200909095F73656C6641636365707465643A2066616C73652C0A2F2A2A2A2A2A2A2F200909095F73656C664465636C696E65643A2066616C73652C0A2F2A2A2A2A2A2A2F200909095F646973706F736548616E64';
wwv_flow_api.g_varchar2_table(61) := '6C6572733A205B5D2C0A2F2A2A2A2A2A2A2F200909095F6D61696E3A20686F7443757272656E744368696C644D6F64756C6520213D3D206D6F64756C6549642C0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909092F2F204D6F64756C65204150490A';
wwv_flow_api.g_varchar2_table(62) := '2F2A2A2A2A2A2A2F200909096163746976653A20747275652C0A2F2A2A2A2A2A2A2F200909096163636570743A2066756E6374696F6E286465702C2063616C6C6261636B29207B0A2F2A2A2A2A2A2A2F200909090969662028646570203D3D3D20756E64';
wwv_flow_api.g_varchar2_table(63) := '6566696E65642920686F742E5F73656C664163636570746564203D20747275653B0A2F2A2A2A2A2A2A2F2009090909656C73652069662028747970656F6620646570203D3D3D202266756E6374696F6E222920686F742E5F73656C664163636570746564';
wwv_flow_api.g_varchar2_table(64) := '203D206465703B0A2F2A2A2A2A2A2A2F2009090909656C73652069662028747970656F6620646570203D3D3D20226F626A65637422290A2F2A2A2A2A2A2A2F200909090909666F7220287661722069203D20303B2069203C206465702E6C656E6774683B';
wwv_flow_api.g_varchar2_table(65) := '20692B2B290A2F2A2A2A2A2A2A2F20090909090909686F742E5F6163636570746564446570656E64656E636965735B6465705B695D5D203D2063616C6C6261636B207C7C2066756E6374696F6E2829207B7D3B0A2F2A2A2A2A2A2A2F2009090909656C73';
wwv_flow_api.g_varchar2_table(66) := '6520686F742E5F6163636570746564446570656E64656E636965735B6465705D203D2063616C6C6261636B207C7C2066756E6374696F6E2829207B7D3B0A2F2A2A2A2A2A2A2F200909097D2C0A2F2A2A2A2A2A2A2F200909096465636C696E653A206675';
wwv_flow_api.g_varchar2_table(67) := '6E6374696F6E2864657029207B0A2F2A2A2A2A2A2A2F200909090969662028646570203D3D3D20756E646566696E65642920686F742E5F73656C664465636C696E6564203D20747275653B0A2F2A2A2A2A2A2A2F2009090909656C736520696620287479';
wwv_flow_api.g_varchar2_table(68) := '70656F6620646570203D3D3D20226F626A65637422290A2F2A2A2A2A2A2A2F200909090909666F7220287661722069203D20303B2069203C206465702E6C656E6774683B20692B2B290A2F2A2A2A2A2A2A2F20090909090909686F742E5F6465636C696E';
wwv_flow_api.g_varchar2_table(69) := '6564446570656E64656E636965735B6465705B695D5D203D20747275653B0A2F2A2A2A2A2A2A2F2009090909656C736520686F742E5F6465636C696E6564446570656E64656E636965735B6465705D203D20747275653B0A2F2A2A2A2A2A2A2F20090909';
wwv_flow_api.g_varchar2_table(70) := '7D2C0A2F2A2A2A2A2A2A2F20090909646973706F73653A2066756E6374696F6E2863616C6C6261636B29207B0A2F2A2A2A2A2A2A2F2009090909686F742E5F646973706F736548616E646C6572732E707573682863616C6C6261636B293B0A2F2A2A2A2A';
wwv_flow_api.g_varchar2_table(71) := '2A2A2F200909097D2C0A2F2A2A2A2A2A2A2F20090909616464446973706F736548616E646C65723A2066756E6374696F6E2863616C6C6261636B29207B0A2F2A2A2A2A2A2A2F2009090909686F742E5F646973706F736548616E646C6572732E70757368';
wwv_flow_api.g_varchar2_table(72) := '2863616C6C6261636B293B0A2F2A2A2A2A2A2A2F200909097D2C0A2F2A2A2A2A2A2A2F2009090972656D6F7665446973706F736548616E646C65723A2066756E6374696F6E2863616C6C6261636B29207B0A2F2A2A2A2A2A2A2F20090909097661722069';
wwv_flow_api.g_varchar2_table(73) := '6478203D20686F742E5F646973706F736548616E646C6572732E696E6465784F662863616C6C6261636B293B0A2F2A2A2A2A2A2A2F200909090969662028696478203E3D20302920686F742E5F646973706F736548616E646C6572732E73706C69636528';
wwv_flow_api.g_varchar2_table(74) := '6964782C2031293B0A2F2A2A2A2A2A2A2F200909097D2C0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909092F2F204D616E6167656D656E74204150490A2F2A2A2A2A2A2A2F20090909636865636B3A20686F74436865636B2C0A2F2A2A2A2A2A2A2F';
wwv_flow_api.g_varchar2_table(75) := '200909096170706C793A20686F744170706C792C0A2F2A2A2A2A2A2A2F200909097374617475733A2066756E6374696F6E286C29207B0A2F2A2A2A2A2A2A2F200909090969662028216C292072657475726E20686F745374617475733B0A2F2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(76) := '2A2F2009090909686F7453746174757348616E646C6572732E70757368286C293B0A2F2A2A2A2A2A2A2F200909097D2C0A2F2A2A2A2A2A2A2F2009090961646453746174757348616E646C65723A2066756E6374696F6E286C29207B0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(77) := '2F2009090909686F7453746174757348616E646C6572732E70757368286C293B0A2F2A2A2A2A2A2A2F200909097D2C0A2F2A2A2A2A2A2A2F2009090972656D6F766553746174757348616E646C65723A2066756E6374696F6E286C29207B0A2F2A2A2A2A';
wwv_flow_api.g_varchar2_table(78) := '2A2A2F200909090976617220696478203D20686F7453746174757348616E646C6572732E696E6465784F66286C293B0A2F2A2A2A2A2A2A2F200909090969662028696478203E3D20302920686F7453746174757348616E646C6572732E73706C69636528';
wwv_flow_api.g_varchar2_table(79) := '6964782C2031293B0A2F2A2A2A2A2A2A2F200909097D2C0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909092F2F696E68657269742066726F6D2070726576696F757320646973706F73652063616C6C0A2F2A2A2A2A2A2A2F20090909646174613A20';
wwv_flow_api.g_varchar2_table(80) := '686F7443757272656E744D6F64756C65446174615B6D6F64756C6549645D0A2F2A2A2A2A2A2A2F2009097D3B0A2F2A2A2A2A2A2A2F200909686F7443757272656E744368696C644D6F64756C65203D20756E646566696E65643B0A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(81) := '090972657475726E20686F743B0A2F2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200976617220686F7453746174757348616E646C657273203D205B5D3B0A2F2A2A2A2A2A2A2F200976617220686F74537461747573203D2022';
wwv_flow_api.g_varchar2_table(82) := '69646C65223B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F74536574537461747573286E657753746174757329207B0A2F2A2A2A2A2A2A2F200909686F74537461747573203D206E65775374617475733B0A2F2A2A2A2A';
wwv_flow_api.g_varchar2_table(83) := '2A2A2F200909666F7220287661722069203D20303B2069203C20686F7453746174757348616E646C6572732E6C656E6774683B20692B2B290A2F2A2A2A2A2A2A2F20090909686F7453746174757348616E646C6572735B695D2E63616C6C286E756C6C2C';
wwv_flow_api.g_varchar2_table(84) := '206E6577537461747573293B0A2F2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F207768696C6520646F776E6C6F6164696E670A2F2A2A2A2A2A2A2F200976617220686F7457616974696E6746696C6573203D20303B0A';
wwv_flow_api.g_varchar2_table(85) := '2F2A2A2A2A2A2A2F200976617220686F744368756E6B734C6F6164696E67203D20303B0A2F2A2A2A2A2A2A2F200976617220686F7457616974696E6746696C65734D6170203D207B7D3B0A2F2A2A2A2A2A2A2F200976617220686F745265717565737465';
wwv_flow_api.g_varchar2_table(86) := '6446696C65734D6170203D207B7D3B0A2F2A2A2A2A2A2A2F200976617220686F74417661696C61626C6546696C65734D6170203D207B7D3B0A2F2A2A2A2A2A2A2F200976617220686F7444656665727265643B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(87) := '2F20092F2F205468652075706461746520696E666F0A2F2A2A2A2A2A2A2F200976617220686F745570646174652C20686F745570646174654E6577486173683B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200966756E6374696F6E20746F4D6F64756C';
wwv_flow_api.g_varchar2_table(88) := '65496428696429207B0A2F2A2A2A2A2A2A2F2009097661722069734E756D626572203D202B6964202B202222203D3D3D2069643B0A2F2A2A2A2A2A2A2F20090972657475726E2069734E756D626572203F202B6964203A2069643B0A2F2A2A2A2A2A2A2F';
wwv_flow_api.g_varchar2_table(89) := '20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F74436865636B286170706C7929207B0A2F2A2A2A2A2A2A2F20090969662028686F7453746174757320213D3D202269646C652229207B0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(90) := '097468726F77206E6577204572726F722822636865636B2829206973206F6E6C7920616C6C6F77656420696E2069646C652073746174757322293B0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F200909686F744170706C794F6E557064617465';
wwv_flow_api.g_varchar2_table(91) := '203D206170706C793B0A2F2A2A2A2A2A2A2F200909686F745365745374617475732822636865636B22293B0A2F2A2A2A2A2A2A2F20090972657475726E20686F74446F776E6C6F61644D616E696665737428686F745265717565737454696D656F757429';
wwv_flow_api.g_varchar2_table(92) := '2E7468656E2866756E6374696F6E2875706461746529207B0A2F2A2A2A2A2A2A2F20090909696620282175706461746529207B0A2F2A2A2A2A2A2A2F2009090909686F74536574537461747573282269646C6522293B0A2F2A2A2A2A2A2A2F2009090909';
wwv_flow_api.g_varchar2_table(93) := '72657475726E206E756C6C3B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F20090909686F7452657175657374656446696C65734D6170203D207B7D3B0A2F2A2A2A2A2A2A2F20090909686F7457616974696E6746696C65734D6170203D207B';
wwv_flow_api.g_varchar2_table(94) := '7D3B0A2F2A2A2A2A2A2A2F20090909686F74417661696C61626C6546696C65734D6170203D207570646174652E633B0A2F2A2A2A2A2A2A2F20090909686F745570646174654E657748617368203D207570646174652E683B0A2F2A2A2A2A2A2A2F0A2F2A';
wwv_flow_api.g_varchar2_table(95) := '2A2A2A2A2A2F20090909686F7453657453746174757328227072657061726522293B0A2F2A2A2A2A2A2A2F200909097661722070726F6D697365203D206E65772050726F6D6973652866756E6374696F6E287265736F6C76652C2072656A65637429207B';
wwv_flow_api.g_varchar2_table(96) := '0A2F2A2A2A2A2A2A2F2009090909686F744465666572726564203D207B0A2F2A2A2A2A2A2A2F2009090909097265736F6C76653A207265736F6C76652C0A2F2A2A2A2A2A2A2F20090909090972656A6563743A2072656A6563740A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(97) := '090909097D3B0A2F2A2A2A2A2A2A2F200909097D293B0A2F2A2A2A2A2A2A2F20090909686F74557064617465203D207B7D3B0A2F2A2A2A2A2A2A2F20090909766172206368756E6B4964203D20226D61696E223B0A2F2A2A2A2A2A2A2F200909092F2F20';
wwv_flow_api.g_varchar2_table(98) := '65736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D6C6F6E652D626C6F636B730A2F2A2A2A2A2A2A2F200909097B0A2F2A2A2A2A2A2A2F20090909092F2A676C6F62616C73206368756E6B4964202A2F0A2F2A2A2A2A2A2A2F20090909';
wwv_flow_api.g_varchar2_table(99) := '09686F74456E737572655570646174654368756E6B286368756E6B4964293B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F20090909696620280A2F2A2A2A2A2A2A2F2009090909686F74537461747573203D3D3D2022707265706172652220';
wwv_flow_api.g_varchar2_table(100) := '26260A2F2A2A2A2A2A2A2F2009090909686F744368756E6B734C6F6164696E67203D3D3D20302026260A2F2A2A2A2A2A2A2F2009090909686F7457616974696E6746696C6573203D3D3D20300A2F2A2A2A2A2A2A2F2009090929207B0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(101) := '2F2009090909686F74557064617465446F776E6C6F6164656428293B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009090972657475726E2070726F6D6973653B0A2F2A2A2A2A2A2A2F2009097D293B0A2F2A2A2A2A2A2A2F20097D0A2F2A';
wwv_flow_api.g_varchar2_table(102) := '2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F2065736C696E742D64697361626C652D6E6578742D6C696E65206E6F2D756E757365642D766172730A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F744164645570646174654368756E6B28636875';
wwv_flow_api.g_varchar2_table(103) := '6E6B49642C206D6F72654D6F64756C657329207B0A2F2A2A2A2A2A2A2F2009096966202821686F74417661696C61626C6546696C65734D61705B6368756E6B49645D207C7C2021686F7452657175657374656446696C65734D61705B6368756E6B49645D';
wwv_flow_api.g_varchar2_table(104) := '290A2F2A2A2A2A2A2A2F2009090972657475726E3B0A2F2A2A2A2A2A2A2F200909686F7452657175657374656446696C65734D61705B6368756E6B49645D203D2066616C73653B0A2F2A2A2A2A2A2A2F200909666F722028766172206D6F64756C654964';
wwv_flow_api.g_varchar2_table(105) := '20696E206D6F72654D6F64756C657329207B0A2F2A2A2A2A2A2A2F20090909696620284F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C286D6F72654D6F64756C65732C206D6F64756C6549642929207B0A2F2A';
wwv_flow_api.g_varchar2_table(106) := '2A2A2A2A2A2F2009090909686F745570646174655B6D6F64756C6549645D203D206D6F72654D6F64756C65735B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F200909696620282D2D';
wwv_flow_api.g_varchar2_table(107) := '686F7457616974696E6746696C6573203D3D3D203020262620686F744368756E6B734C6F6164696E67203D3D3D203029207B0A2F2A2A2A2A2A2A2F20090909686F74557064617465446F776E6C6F6164656428293B0A2F2A2A2A2A2A2A2F2009097D0A2F';
wwv_flow_api.g_varchar2_table(108) := '2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F74456E737572655570646174654368756E6B286368756E6B496429207B0A2F2A2A2A2A2A2A2F2009096966202821686F74417661696C61626C6546';
wwv_flow_api.g_varchar2_table(109) := '696C65734D61705B6368756E6B49645D29207B0A2F2A2A2A2A2A2A2F20090909686F7457616974696E6746696C65734D61705B6368756E6B49645D203D20747275653B0A2F2A2A2A2A2A2A2F2009097D20656C7365207B0A2F2A2A2A2A2A2A2F20090909';
wwv_flow_api.g_varchar2_table(110) := '686F7452657175657374656446696C65734D61705B6368756E6B49645D203D20747275653B0A2F2A2A2A2A2A2A2F20090909686F7457616974696E6746696C65732B2B3B0A2F2A2A2A2A2A2A2F20090909686F74446F776E6C6F61645570646174654368';
wwv_flow_api.g_varchar2_table(111) := '756E6B286368756E6B4964293B0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F74557064617465446F776E6C6F616465642829207B0A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(112) := '0909686F745365745374617475732822726561647922293B0A2F2A2A2A2A2A2A2F200909766172206465666572726564203D20686F7444656665727265643B0A2F2A2A2A2A2A2A2F200909686F744465666572726564203D206E756C6C3B0A2F2A2A2A2A';
wwv_flow_api.g_varchar2_table(113) := '2A2A2F20090969662028216465666572726564292072657475726E3B0A2F2A2A2A2A2A2A2F20090969662028686F744170706C794F6E55706461746529207B0A2F2A2A2A2A2A2A2F200909092F2F2057726170206465666572726564206F626A65637420';
wwv_flow_api.g_varchar2_table(114) := '696E2050726F6D69736520746F206D61726B20697420617320612077656C6C2D68616E646C65642050726F6D69736520746F0A2F2A2A2A2A2A2A2F200909092F2F2061766F69642074726967676572696E6720756E63617567687420657863657074696F';
wwv_flow_api.g_varchar2_table(115) := '6E207761726E696E6720696E204368726F6D652E0A2F2A2A2A2A2A2A2F200909092F2F205365652068747470733A2F2F627567732E6368726F6D69756D2E6F72672F702F6368726F6D69756D2F6973737565732F64657461696C3F69643D343635363636';
wwv_flow_api.g_varchar2_table(116) := '0A2F2A2A2A2A2A2A2F2009090950726F6D6973652E7265736F6C766528290A2F2A2A2A2A2A2A2F20090909092E7468656E2866756E6374696F6E2829207B0A2F2A2A2A2A2A2A2F20090909090972657475726E20686F744170706C7928686F744170706C';
wwv_flow_api.g_varchar2_table(117) := '794F6E557064617465293B0A2F2A2A2A2A2A2A2F20090909097D290A2F2A2A2A2A2A2A2F20090909092E7468656E280A2F2A2A2A2A2A2A2F20090909090966756E6374696F6E28726573756C7429207B0A2F2A2A2A2A2A2A2F2009090909090964656665';
wwv_flow_api.g_varchar2_table(118) := '727265642E7265736F6C766528726573756C74293B0A2F2A2A2A2A2A2A2F2009090909097D2C0A2F2A2A2A2A2A2A2F20090909090966756E6374696F6E2865727229207B0A2F2A2A2A2A2A2A2F2009090909090964656665727265642E72656A65637428';
wwv_flow_api.g_varchar2_table(119) := '657272293B0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F2009090909293B0A2F2A2A2A2A2A2A2F2009097D20656C7365207B0A2F2A2A2A2A2A2A2F20090909766172206F757464617465644D6F64756C6573203D205B5D3B0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(120) := '2A2A2A2F20090909666F72202876617220696420696E20686F7455706461746529207B0A2F2A2A2A2A2A2A2F2009090909696620284F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C28686F745570646174652C';
wwv_flow_api.g_varchar2_table(121) := '2069642929207B0A2F2A2A2A2A2A2A2F2009090909096F757464617465644D6F64756C65732E7075736828746F4D6F64756C65496428696429293B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(122) := '0964656665727265642E7265736F6C7665286F757464617465644D6F64756C6573293B0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200966756E6374696F6E20686F744170706C79286F70';
wwv_flow_api.g_varchar2_table(123) := '74696F6E7329207B0A2F2A2A2A2A2A2A2F20090969662028686F7453746174757320213D3D2022726561647922290A2F2A2A2A2A2A2A2F200909097468726F77206E6577204572726F7228226170706C792829206973206F6E6C7920616C6C6F77656420';
wwv_flow_api.g_varchar2_table(124) := '696E2072656164792073746174757322293B0A2F2A2A2A2A2A2A2F2009096F7074696F6E73203D206F7074696F6E73207C7C207B7D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009097661722063623B0A2F2A2A2A2A2A2A2F20090976617220693B';
wwv_flow_api.g_varchar2_table(125) := '0A2F2A2A2A2A2A2A2F200909766172206A3B0A2F2A2A2A2A2A2A2F200909766172206D6F64756C653B0A2F2A2A2A2A2A2A2F200909766172206D6F64756C6549643B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20090966756E6374696F6E2067657441';
wwv_flow_api.g_varchar2_table(126) := '666665637465645374756666287570646174654D6F64756C65496429207B0A2F2A2A2A2A2A2A2F20090909766172206F757464617465644D6F64756C6573203D205B7570646174654D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F20090909766172206F';
wwv_flow_api.g_varchar2_table(127) := '75746461746564446570656E64656E63696573203D207B7D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20090909766172207175657565203D206F757464617465644D6F64756C65732E6D61702866756E6374696F6E28696429207B0A2F2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(128) := '2A2F200909090972657475726E207B0A2F2A2A2A2A2A2A2F200909090909636861696E3A205B69645D2C0A2F2A2A2A2A2A2A2F20090909090969643A2069640A2F2A2A2A2A2A2A2F20090909097D3B0A2F2A2A2A2A2A2A2F200909097D293B0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(129) := '2A2A2A2F200909097768696C65202871756575652E6C656E677468203E203029207B0A2F2A2A2A2A2A2A2F20090909097661722071756575654974656D203D2071756575652E706F7028293B0A2F2A2A2A2A2A2A2F2009090909766172206D6F64756C65';
wwv_flow_api.g_varchar2_table(130) := '4964203D2071756575654974656D2E69643B0A2F2A2A2A2A2A2A2F200909090976617220636861696E203D2071756575654974656D2E636861696E3B0A2F2A2A2A2A2A2A2F20090909096D6F64756C65203D20696E7374616C6C65644D6F64756C65735B';
wwv_flow_api.g_varchar2_table(131) := '6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F200909090969662028216D6F64756C65207C7C206D6F64756C652E686F742E5F73656C6641636365707465642920636F6E74696E75653B0A2F2A2A2A2A2A2A2F2009090909696620286D6F64756C652E68';
wwv_flow_api.g_varchar2_table(132) := '6F742E5F73656C664465636C696E656429207B0A2F2A2A2A2A2A2A2F20090909090972657475726E207B0A2F2A2A2A2A2A2A2F20090909090909747970653A202273656C662D6465636C696E6564222C0A2F2A2A2A2A2A2A2F2009090909090963686169';
wwv_flow_api.g_varchar2_table(133) := '6E3A20636861696E2C0A2F2A2A2A2A2A2A2F200909090909096D6F64756C6549643A206D6F64756C6549640A2F2A2A2A2A2A2A2F2009090909097D3B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F2009090909696620286D6F64756C652E';
wwv_flow_api.g_varchar2_table(134) := '686F742E5F6D61696E29207B0A2F2A2A2A2A2A2A2F20090909090972657475726E207B0A2F2A2A2A2A2A2A2F20090909090909747970653A2022756E6163636570746564222C0A2F2A2A2A2A2A2A2F20090909090909636861696E3A20636861696E2C0A';
wwv_flow_api.g_varchar2_table(135) := '2F2A2A2A2A2A2A2F200909090909096D6F64756C6549643A206D6F64756C6549640A2F2A2A2A2A2A2A2F2009090909097D3B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F2009090909666F7220287661722069203D20303B2069203C206D';
wwv_flow_api.g_varchar2_table(136) := '6F64756C652E706172656E74732E6C656E6774683B20692B2B29207B0A2F2A2A2A2A2A2A2F20090909090976617220706172656E744964203D206D6F64756C652E706172656E74735B695D3B0A2F2A2A2A2A2A2A2F20090909090976617220706172656E';
wwv_flow_api.g_varchar2_table(137) := '74203D20696E7374616C6C65644D6F64756C65735B706172656E7449645D3B0A2F2A2A2A2A2A2A2F2009090909096966202821706172656E742920636F6E74696E75653B0A2F2A2A2A2A2A2A2F20090909090969662028706172656E742E686F742E5F64';
wwv_flow_api.g_varchar2_table(138) := '65636C696E6564446570656E64656E636965735B6D6F64756C6549645D29207B0A2F2A2A2A2A2A2A2F2009090909090972657475726E207B0A2F2A2A2A2A2A2A2F2009090909090909747970653A20226465636C696E6564222C0A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(139) := '09090909090909636861696E3A20636861696E2E636F6E636174285B706172656E7449645D292C0A2F2A2A2A2A2A2A2F20090909090909096D6F64756C6549643A206D6F64756C6549642C0A2F2A2A2A2A2A2A2F2009090909090909706172656E744964';
wwv_flow_api.g_varchar2_table(140) := '3A20706172656E7449640A2F2A2A2A2A2A2A2F200909090909097D3B0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F200909090909696620286F757464617465644D6F64756C65732E696E6465784F6628706172656E7449642920213D3D';
wwv_flow_api.g_varchar2_table(141) := '202D312920636F6E74696E75653B0A2F2A2A2A2A2A2A2F20090909090969662028706172656E742E686F742E5F6163636570746564446570656E64656E636965735B6D6F64756C6549645D29207B0A2F2A2A2A2A2A2A2F2009090909090969662028216F';
wwv_flow_api.g_varchar2_table(142) := '75746461746564446570656E64656E636965735B706172656E7449645D290A2F2A2A2A2A2A2A2F20090909090909096F75746461746564446570656E64656E636965735B706172656E7449645D203D205B5D3B0A2F2A2A2A2A2A2A2F2009090909090961';
wwv_flow_api.g_varchar2_table(143) := '6464416C6C546F536574286F75746461746564446570656E64656E636965735B706172656E7449645D2C205B6D6F64756C6549645D293B0A2F2A2A2A2A2A2A2F20090909090909636F6E74696E75653B0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A';
wwv_flow_api.g_varchar2_table(144) := '2A2A2A2A2F20090909090964656C657465206F75746461746564446570656E64656E636965735B706172656E7449645D3B0A2F2A2A2A2A2A2A2F2009090909096F757464617465644D6F64756C65732E7075736828706172656E744964293B0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(145) := '2A2A2A2F20090909090971756575652E70757368287B0A2F2A2A2A2A2A2A2F20090909090909636861696E3A20636861696E2E636F6E636174285B706172656E7449645D292C0A2F2A2A2A2A2A2A2F2009090909090969643A20706172656E7449640A2F';
wwv_flow_api.g_varchar2_table(146) := '2A2A2A2A2A2A2F2009090909097D293B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009090972657475726E207B0A2F2A2A2A2A2A2A2F2009090909747970653A202261636365';
wwv_flow_api.g_varchar2_table(147) := '70746564222C0A2F2A2A2A2A2A2A2F20090909096D6F64756C6549643A207570646174654D6F64756C6549642C0A2F2A2A2A2A2A2A2F20090909096F757464617465644D6F64756C65733A206F757464617465644D6F64756C65732C0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(148) := '2F20090909096F75746461746564446570656E64656E636965733A206F75746461746564446570656E64656E636965730A2F2A2A2A2A2A2A2F200909097D3B0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20090966756E';
wwv_flow_api.g_varchar2_table(149) := '6374696F6E20616464416C6C546F53657428612C206229207B0A2F2A2A2A2A2A2A2F20090909666F7220287661722069203D20303B2069203C20622E6C656E6774683B20692B2B29207B0A2F2A2A2A2A2A2A2F2009090909766172206974656D203D2062';
wwv_flow_api.g_varchar2_table(150) := '5B695D3B0A2F2A2A2A2A2A2A2F200909090969662028612E696E6465784F66286974656D29203D3D3D202D312920612E70757368286974656D293B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(151) := '2A2A2A2F2009092F2F20617420626567696E20616C6C2075706461746573206D6F64756C657320617265206F757464617465640A2F2A2A2A2A2A2A2F2009092F2F2074686520226F7574646174656422207374617475732063616E2070726F7061676174';
wwv_flow_api.g_varchar2_table(152) := '6520746F20706172656E7473206966207468657920646F6E27742061636365707420746865206368696C6472656E0A2F2A2A2A2A2A2A2F200909766172206F75746461746564446570656E64656E63696573203D207B7D3B0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(153) := '766172206F757464617465644D6F64756C6573203D205B5D3B0A2F2A2A2A2A2A2A2F200909766172206170706C696564557064617465203D207B7D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909766172207761726E556E657870656374656452';
wwv_flow_api.g_varchar2_table(154) := '657175697265203D2066756E6374696F6E207761726E556E6578706563746564526571756972652829207B0A2F2A2A2A2A2A2A2F20090909636F6E736F6C652E7761726E280A2F2A2A2A2A2A2A2F2009090909225B484D525D20756E6578706563746564';
wwv_flow_api.g_varchar2_table(155) := '20726571756972652822202B20726573756C742E6D6F64756C654964202B20222920746F20646973706F736564206D6F64756C65220A2F2A2A2A2A2A2A2F20090909293B0A2F2A2A2A2A2A2A2F2009097D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F';
wwv_flow_api.g_varchar2_table(156) := '200909666F72202876617220696420696E20686F7455706461746529207B0A2F2A2A2A2A2A2A2F20090909696620284F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C28686F745570646174652C206964292920';
wwv_flow_api.g_varchar2_table(157) := '7B0A2F2A2A2A2A2A2A2F20090909096D6F64756C654964203D20746F4D6F64756C654964286964293B0A2F2A2A2A2A2A2A2F20090909092F2A2A204074797065207B544F444F7D202A2F0A2F2A2A2A2A2A2A2F200909090976617220726573756C743B0A';
wwv_flow_api.g_varchar2_table(158) := '2F2A2A2A2A2A2A2F200909090969662028686F745570646174655B69645D29207B0A2F2A2A2A2A2A2A2F200909090909726573756C74203D2067657441666665637465645374756666286D6F64756C654964293B0A2F2A2A2A2A2A2A2F20090909097D20';
wwv_flow_api.g_varchar2_table(159) := '656C7365207B0A2F2A2A2A2A2A2A2F200909090909726573756C74203D207B0A2F2A2A2A2A2A2A2F20090909090909747970653A2022646973706F736564222C0A2F2A2A2A2A2A2A2F200909090909096D6F64756C6549643A2069640A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(160) := '2F2009090909097D3B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F20090909092F2A2A204074797065207B4572726F727C66616C73657D202A2F0A2F2A2A2A2A2A2A2F20090909097661722061626F72744572726F72203D2066616C7365';
wwv_flow_api.g_varchar2_table(161) := '3B0A2F2A2A2A2A2A2A2F200909090976617220646F4170706C79203D2066616C73653B0A2F2A2A2A2A2A2A2F200909090976617220646F446973706F7365203D2066616C73653B0A2F2A2A2A2A2A2A2F200909090976617220636861696E496E666F203D';
wwv_flow_api.g_varchar2_table(162) := '2022223B0A2F2A2A2A2A2A2A2F200909090969662028726573756C742E636861696E29207B0A2F2A2A2A2A2A2A2F200909090909636861696E496E666F203D20225C6E5570646174652070726F7061676174696F6E3A2022202B20726573756C742E6368';
wwv_flow_api.g_varchar2_table(163) := '61696E2E6A6F696E2822202D3E2022293B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F20090909097377697463682028726573756C742E7479706529207B0A2F2A2A2A2A2A2A2F20090909090963617365202273656C662D6465636C696E';
wwv_flow_api.g_varchar2_table(164) := '6564223A0A2F2A2A2A2A2A2A2F20090909090909696620286F7074696F6E732E6F6E4465636C696E656429206F7074696F6E732E6F6E4465636C696E656428726573756C74293B0A2F2A2A2A2A2A2A2F2009090909090969662028216F7074696F6E732E';
wwv_flow_api.g_varchar2_table(165) := '69676E6F72654465636C696E6564290A2F2A2A2A2A2A2A2F200909090909090961626F72744572726F72203D206E6577204572726F72280A2F2A2A2A2A2A2A2F2009090909090909092241626F727465642062656361757365206F662073656C66206465';
wwv_flow_api.g_varchar2_table(166) := '636C696E653A2022202B0A2F2A2A2A2A2A2A2F20090909090909090909726573756C742E6D6F64756C654964202B0A2F2A2A2A2A2A2A2F20090909090909090909636861696E496E666F0A2F2A2A2A2A2A2A2F2009090909090909293B0A2F2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(167) := '2A2F20090909090909627265616B3B0A2F2A2A2A2A2A2A2F2009090909096361736520226465636C696E6564223A0A2F2A2A2A2A2A2A2F20090909090909696620286F7074696F6E732E6F6E4465636C696E656429206F7074696F6E732E6F6E4465636C';
wwv_flow_api.g_varchar2_table(168) := '696E656428726573756C74293B0A2F2A2A2A2A2A2A2F2009090909090969662028216F7074696F6E732E69676E6F72654465636C696E6564290A2F2A2A2A2A2A2A2F200909090909090961626F72744572726F72203D206E6577204572726F72280A2F2A';
wwv_flow_api.g_varchar2_table(169) := '2A2A2A2A2A2F2009090909090909092241626F727465642062656361757365206F66206465636C696E656420646570656E64656E63793A2022202B0A2F2A2A2A2A2A2A2F20090909090909090909726573756C742E6D6F64756C654964202B0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(170) := '2A2A2A2F200909090909090909092220696E2022202B0A2F2A2A2A2A2A2A2F20090909090909090909726573756C742E706172656E744964202B0A2F2A2A2A2A2A2A2F20090909090909090909636861696E496E666F0A2F2A2A2A2A2A2A2F2009090909';
wwv_flow_api.g_varchar2_table(171) := '090909293B0A2F2A2A2A2A2A2A2F20090909090909627265616B3B0A2F2A2A2A2A2A2A2F200909090909636173652022756E6163636570746564223A0A2F2A2A2A2A2A2A2F20090909090909696620286F7074696F6E732E6F6E556E6163636570746564';
wwv_flow_api.g_varchar2_table(172) := '29206F7074696F6E732E6F6E556E616363657074656428726573756C74293B0A2F2A2A2A2A2A2A2F2009090909090969662028216F7074696F6E732E69676E6F7265556E6163636570746564290A2F2A2A2A2A2A2A2F200909090909090961626F727445';
wwv_flow_api.g_varchar2_table(173) := '72726F72203D206E6577204572726F72280A2F2A2A2A2A2A2A2F2009090909090909092241626F7274656420626563617573652022202B206D6F64756C654964202B2022206973206E6F7420616363657074656422202B20636861696E496E666F0A2F2A';
wwv_flow_api.g_varchar2_table(174) := '2A2A2A2A2A2F2009090909090909293B0A2F2A2A2A2A2A2A2F20090909090909627265616B3B0A2F2A2A2A2A2A2A2F2009090909096361736520226163636570746564223A0A2F2A2A2A2A2A2A2F20090909090909696620286F7074696F6E732E6F6E41';
wwv_flow_api.g_varchar2_table(175) := '6363657074656429206F7074696F6E732E6F6E416363657074656428726573756C74293B0A2F2A2A2A2A2A2A2F20090909090909646F4170706C79203D20747275653B0A2F2A2A2A2A2A2A2F20090909090909627265616B3B0A2F2A2A2A2A2A2A2F2009';
wwv_flow_api.g_varchar2_table(176) := '09090909636173652022646973706F736564223A0A2F2A2A2A2A2A2A2F20090909090909696620286F7074696F6E732E6F6E446973706F73656429206F7074696F6E732E6F6E446973706F73656428726573756C74293B0A2F2A2A2A2A2A2A2F20090909';
wwv_flow_api.g_varchar2_table(177) := '090909646F446973706F7365203D20747275653B0A2F2A2A2A2A2A2A2F20090909090909627265616B3B0A2F2A2A2A2A2A2A2F20090909090964656661756C743A0A2F2A2A2A2A2A2A2F200909090909097468726F77206E6577204572726F722822556E';
wwv_flow_api.g_varchar2_table(178) := '657863657074696F6E20747970652022202B20726573756C742E74797065293B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F20090909096966202861626F72744572726F7229207B0A2F2A2A2A2A2A2A2F200909090909686F7453657453';
wwv_flow_api.g_varchar2_table(179) := '7461747573282261626F727422293B0A2F2A2A2A2A2A2A2F20090909090972657475726E2050726F6D6973652E72656A6563742861626F72744572726F72293B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909090969662028646F41';
wwv_flow_api.g_varchar2_table(180) := '70706C7929207B0A2F2A2A2A2A2A2A2F2009090909096170706C6965645570646174655B6D6F64756C6549645D203D20686F745570646174655B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F200909090909616464416C6C546F536574286F75746461';
wwv_flow_api.g_varchar2_table(181) := '7465644D6F64756C65732C20726573756C742E6F757464617465644D6F64756C6573293B0A2F2A2A2A2A2A2A2F200909090909666F7220286D6F64756C65496420696E20726573756C742E6F75746461746564446570656E64656E6369657329207B0A2F';
wwv_flow_api.g_varchar2_table(182) := '2A2A2A2A2A2A2F20090909090909696620280A2F2A2A2A2A2A2A2F20090909090909094F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C280A2F2A2A2A2A2A2A2F200909090909090909726573756C742E6F7574';
wwv_flow_api.g_varchar2_table(183) := '6461746564446570656E64656E636965732C0A2F2A2A2A2A2A2A2F2009090909090909096D6F64756C6549640A2F2A2A2A2A2A2A2F2009090909090909290A2F2A2A2A2A2A2A2F2009090909090929207B0A2F2A2A2A2A2A2A2F20090909090909096966';
wwv_flow_api.g_varchar2_table(184) := '2028216F75746461746564446570656E64656E636965735B6D6F64756C6549645D290A2F2A2A2A2A2A2A2F2009090909090909096F75746461746564446570656E64656E636965735B6D6F64756C6549645D203D205B5D3B0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(185) := '0909090909616464416C6C546F536574280A2F2A2A2A2A2A2A2F2009090909090909096F75746461746564446570656E64656E636965735B6D6F64756C6549645D2C0A2F2A2A2A2A2A2A2F200909090909090909726573756C742E6F7574646174656444';
wwv_flow_api.g_varchar2_table(186) := '6570656E64656E636965735B6D6F64756C6549645D0A2F2A2A2A2A2A2A2F2009090909090909293B0A2F2A2A2A2A2A2A2F200909090909097D0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(187) := '090969662028646F446973706F736529207B0A2F2A2A2A2A2A2A2F200909090909616464416C6C546F536574286F757464617465644D6F64756C65732C205B726573756C742E6D6F64756C6549645D293B0A2F2A2A2A2A2A2A2F2009090909096170706C';
wwv_flow_api.g_varchar2_table(188) := '6965645570646174655B6D6F64756C6549645D203D207761726E556E6578706563746564526571756972653B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(189) := '2A2A2A2F2009092F2F2053746F72652073656C66206163636570746564206F75746461746564206D6F64756C657320746F2072657175697265207468656D206C6174657220627920746865206D6F64756C652073797374656D0A2F2A2A2A2A2A2A2F2009';
wwv_flow_api.g_varchar2_table(190) := '09766172206F7574646174656453656C6641636365707465644D6F64756C6573203D205B5D3B0A2F2A2A2A2A2A2A2F200909666F72202869203D20303B2069203C206F757464617465644D6F64756C65732E6C656E6774683B20692B2B29207B0A2F2A2A';
wwv_flow_api.g_varchar2_table(191) := '2A2A2A2A2F200909096D6F64756C654964203D206F757464617465644D6F64756C65735B695D3B0A2F2A2A2A2A2A2A2F20090909696620280A2F2A2A2A2A2A2A2F2009090909696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D2026260A';
wwv_flow_api.g_varchar2_table(192) := '2F2A2A2A2A2A2A2F2009090909696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D2E686F742E5F73656C6641636365707465642026260A2F2A2A2A2A2A2A2F20090909092F2F2072656D6F7665642073656C662D6163636570746564206D';
wwv_flow_api.g_varchar2_table(193) := '6F64756C65732073686F756C64206E6F742062652072657175697265640A2F2A2A2A2A2A2A2F20090909096170706C6965645570646174655B6D6F64756C6549645D20213D3D207761726E556E6578706563746564526571756972650A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(194) := '2F2009090929207B0A2F2A2A2A2A2A2A2F20090909096F7574646174656453656C6641636365707465644D6F64756C65732E70757368287B0A2F2A2A2A2A2A2A2F2009090909096D6F64756C653A206D6F64756C6549642C0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(195) := '0909096572726F7248616E646C65723A20696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D2E686F742E5F73656C6641636365707465640A2F2A2A2A2A2A2A2F20090909097D293B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(196) := '2F2009097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009092F2F204E6F7720696E2022646973706F7365222070686173650A2F2A2A2A2A2A2A2F200909686F745365745374617475732822646973706F736522293B0A2F2A2A2A2A2A2A2F2009094F';
wwv_flow_api.g_varchar2_table(197) := '626A6563742E6B65797328686F74417661696C61626C6546696C65734D6170292E666F72456163682866756E6374696F6E286368756E6B496429207B0A2F2A2A2A2A2A2A2F2009090969662028686F74417661696C61626C6546696C65734D61705B6368';
wwv_flow_api.g_varchar2_table(198) := '756E6B49645D203D3D3D2066616C736529207B0A2F2A2A2A2A2A2A2F2009090909686F74446973706F73654368756E6B286368756E6B4964293B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D293B0A2F2A2A2A2A2A2A2F0A2F2A2A';
wwv_flow_api.g_varchar2_table(199) := '2A2A2A2A2F200909766172206964783B0A2F2A2A2A2A2A2A2F200909766172207175657565203D206F757464617465644D6F64756C65732E736C69636528293B0A2F2A2A2A2A2A2A2F2009097768696C65202871756575652E6C656E677468203E203029';
wwv_flow_api.g_varchar2_table(200) := '207B0A2F2A2A2A2A2A2A2F200909096D6F64756C654964203D2071756575652E706F7028293B0A2F2A2A2A2A2A2A2F200909096D6F64756C65203D20696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F20090909';
wwv_flow_api.g_varchar2_table(201) := '69662028216D6F64756C652920636F6E74696E75653B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909097661722064617461203D207B7D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909092F2F2043616C6C20646973706F73652068616E64';
wwv_flow_api.g_varchar2_table(202) := '6C6572730A2F2A2A2A2A2A2A2F2009090976617220646973706F736548616E646C657273203D206D6F64756C652E686F742E5F646973706F736548616E646C6572733B0A2F2A2A2A2A2A2A2F20090909666F7220286A203D20303B206A203C2064697370';
wwv_flow_api.g_varchar2_table(203) := '6F736548616E646C6572732E6C656E6774683B206A2B2B29207B0A2F2A2A2A2A2A2A2F20090909096362203D20646973706F736548616E646C6572735B6A5D3B0A2F2A2A2A2A2A2A2F200909090963622864617461293B0A2F2A2A2A2A2A2A2F20090909';
wwv_flow_api.g_varchar2_table(204) := '7D0A2F2A2A2A2A2A2A2F20090909686F7443757272656E744D6F64756C65446174615B6D6F64756C6549645D203D20646174613B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909092F2F2064697361626C65206D6F64756C65202874686973206469';
wwv_flow_api.g_varchar2_table(205) := '7361626C65732072657175697265732066726F6D2074686973206D6F64756C65290A2F2A2A2A2A2A2A2F200909096D6F64756C652E686F742E616374697665203D2066616C73653B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909092F2F2072656D';
wwv_flow_api.g_varchar2_table(206) := '6F7665206D6F64756C652066726F6D2063616368650A2F2A2A2A2A2A2A2F2009090964656C65746520696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909092F2F207768656E206469';
wwv_flow_api.g_varchar2_table(207) := '73706F73696E67207468657265206973206E6F206E65656420746F2063616C6C20646973706F73652068616E646C65720A2F2A2A2A2A2A2A2F2009090964656C657465206F75746461746564446570656E64656E636965735B6D6F64756C6549645D3B0A';
wwv_flow_api.g_varchar2_table(208) := '2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909092F2F2072656D6F76652022706172656E747322207265666572656E6365732066726F6D20616C6C206368696C6472656E0A2F2A2A2A2A2A2A2F20090909666F7220286A203D20303B206A203C206D6F';
wwv_flow_api.g_varchar2_table(209) := '64756C652E6368696C6472656E2E6C656E6774683B206A2B2B29207B0A2F2A2A2A2A2A2A2F2009090909766172206368696C64203D20696E7374616C6C65644D6F64756C65735B6D6F64756C652E6368696C6472656E5B6A5D5D3B0A2F2A2A2A2A2A2A2F';
wwv_flow_api.g_varchar2_table(210) := '200909090969662028216368696C642920636F6E74696E75653B0A2F2A2A2A2A2A2A2F2009090909696478203D206368696C642E706172656E74732E696E6465784F66286D6F64756C654964293B0A2F2A2A2A2A2A2A2F20090909096966202869647820';
wwv_flow_api.g_varchar2_table(211) := '3E3D203029207B0A2F2A2A2A2A2A2A2F2009090909096368696C642E706172656E74732E73706C696365286964782C2031293B0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(212) := '2A2F0A2F2A2A2A2A2A2A2F2009092F2F2072656D6F7665206F7574646174656420646570656E64656E63792066726F6D206D6F64756C65206368696C6472656E0A2F2A2A2A2A2A2A2F20090976617220646570656E64656E63793B0A2F2A2A2A2A2A2A2F';
wwv_flow_api.g_varchar2_table(213) := '200909766172206D6F64756C654F75746461746564446570656E64656E636965733B0A2F2A2A2A2A2A2A2F200909666F7220286D6F64756C65496420696E206F75746461746564446570656E64656E6369657329207B0A2F2A2A2A2A2A2A2F2009090969';
wwv_flow_api.g_varchar2_table(214) := '6620280A2F2A2A2A2A2A2A2F20090909094F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C286F75746461746564446570656E64656E636965732C206D6F64756C654964290A2F2A2A2A2A2A2A2F200909092920';
wwv_flow_api.g_varchar2_table(215) := '7B0A2F2A2A2A2A2A2A2F20090909096D6F64756C65203D20696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F2009090909696620286D6F64756C6529207B0A2F2A2A2A2A2A2A2F2009090909096D6F64756C654F';
wwv_flow_api.g_varchar2_table(216) := '75746461746564446570656E64656E63696573203D206F75746461746564446570656E64656E636965735B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F200909090909666F7220286A203D20303B206A203C206D6F64756C654F757464617465644465';
wwv_flow_api.g_varchar2_table(217) := '70656E64656E636965732E6C656E6774683B206A2B2B29207B0A2F2A2A2A2A2A2A2F20090909090909646570656E64656E6379203D206D6F64756C654F75746461746564446570656E64656E636965735B6A5D3B0A2F2A2A2A2A2A2A2F20090909090909';
wwv_flow_api.g_varchar2_table(218) := '696478203D206D6F64756C652E6368696C6472656E2E696E6465784F6628646570656E64656E6379293B0A2F2A2A2A2A2A2A2F2009090909090969662028696478203E3D203029206D6F64756C652E6368696C6472656E2E73706C696365286964782C20';
wwv_flow_api.g_varchar2_table(219) := '31293B0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009092F2F204E6F7720696E20226170706C792220';
wwv_flow_api.g_varchar2_table(220) := '70686173650A2F2A2A2A2A2A2A2F200909686F7453657453746174757328226170706C7922293B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F200909686F7443757272656E7448617368203D20686F745570646174654E6577486173683B0A2F2A2A2A2A';
wwv_flow_api.g_varchar2_table(221) := '2A2A2F0A2F2A2A2A2A2A2A2F2009092F2F20696E73657274206E657720636F64650A2F2A2A2A2A2A2A2F200909666F7220286D6F64756C65496420696E206170706C69656455706461746529207B0A2F2A2A2A2A2A2A2F20090909696620284F626A6563';
wwv_flow_api.g_varchar2_table(222) := '742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C286170706C6965645570646174652C206D6F64756C6549642929207B0A2F2A2A2A2A2A2A2F20090909096D6F64756C65735B6D6F64756C6549645D203D206170706C696564';
wwv_flow_api.g_varchar2_table(223) := '5570646174655B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009092F2F2063616C6C206163636570742068616E646C6572730A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(224) := '766172206572726F72203D206E756C6C3B0A2F2A2A2A2A2A2A2F200909666F7220286D6F64756C65496420696E206F75746461746564446570656E64656E6369657329207B0A2F2A2A2A2A2A2A2F20090909696620280A2F2A2A2A2A2A2A2F2009090909';
wwv_flow_api.g_varchar2_table(225) := '4F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C286F75746461746564446570656E64656E636965732C206D6F64756C654964290A2F2A2A2A2A2A2A2F2009090929207B0A2F2A2A2A2A2A2A2F20090909096D6F';
wwv_flow_api.g_varchar2_table(226) := '64756C65203D20696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F2009090909696620286D6F64756C6529207B0A2F2A2A2A2A2A2A2F2009090909096D6F64756C654F75746461746564446570656E64656E6369';
wwv_flow_api.g_varchar2_table(227) := '6573203D206F75746461746564446570656E64656E636965735B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F2009090909097661722063616C6C6261636B73203D205B5D3B0A2F2A2A2A2A2A2A2F200909090909666F72202869203D20303B2069203C';
wwv_flow_api.g_varchar2_table(228) := '206D6F64756C654F75746461746564446570656E64656E636965732E6C656E6774683B20692B2B29207B0A2F2A2A2A2A2A2A2F20090909090909646570656E64656E6379203D206D6F64756C654F75746461746564446570656E64656E636965735B695D';
wwv_flow_api.g_varchar2_table(229) := '3B0A2F2A2A2A2A2A2A2F200909090909096362203D206D6F64756C652E686F742E5F6163636570746564446570656E64656E636965735B646570656E64656E63795D3B0A2F2A2A2A2A2A2A2F2009090909090969662028636229207B0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(230) := '2F20090909090909096966202863616C6C6261636B732E696E6465784F662863622920213D3D202D312920636F6E74696E75653B0A2F2A2A2A2A2A2A2F200909090909090963616C6C6261636B732E70757368286362293B0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(231) := '090909097D0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F200909090909666F72202869203D20303B2069203C2063616C6C6261636B732E6C656E6774683B20692B2B29207B0A2F2A2A2A2A2A2A2F200909090909096362203D2063616C';
wwv_flow_api.g_varchar2_table(232) := '6C6261636B735B695D3B0A2F2A2A2A2A2A2A2F20090909090909747279207B0A2F2A2A2A2A2A2A2F20090909090909096362286D6F64756C654F75746461746564446570656E64656E63696573293B0A2F2A2A2A2A2A2A2F200909090909097D20636174';
wwv_flow_api.g_varchar2_table(233) := '6368202865727229207B0A2F2A2A2A2A2A2A2F2009090909090909696620286F7074696F6E732E6F6E4572726F72656429207B0A2F2A2A2A2A2A2A2F2009090909090909096F7074696F6E732E6F6E4572726F726564287B0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(234) := '09090909090909747970653A20226163636570742D6572726F726564222C0A2F2A2A2A2A2A2A2F200909090909090909096D6F64756C6549643A206D6F64756C6549642C0A2F2A2A2A2A2A2A2F20090909090909090909646570656E64656E637949643A';
wwv_flow_api.g_varchar2_table(235) := '206D6F64756C654F75746461746564446570656E64656E636965735B695D2C0A2F2A2A2A2A2A2A2F200909090909090909096572726F723A206572720A2F2A2A2A2A2A2A2F2009090909090909097D293B0A2F2A2A2A2A2A2A2F20090909090909097D0A';
wwv_flow_api.g_varchar2_table(236) := '2F2A2A2A2A2A2A2F200909090909090969662028216F7074696F6E732E69676E6F72654572726F72656429207B0A2F2A2A2A2A2A2A2F20090909090909090969662028216572726F7229206572726F72203D206572723B0A2F2A2A2A2A2A2A2F20090909';
wwv_flow_api.g_varchar2_table(237) := '090909097D0A2F2A2A2A2A2A2A2F200909090909097D0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009';
wwv_flow_api.g_varchar2_table(238) := '092F2F204C6F61642073656C66206163636570746564206D6F64756C65730A2F2A2A2A2A2A2A2F200909666F72202869203D20303B2069203C206F7574646174656453656C6641636365707465644D6F64756C65732E6C656E6774683B20692B2B29207B';
wwv_flow_api.g_varchar2_table(239) := '0A2F2A2A2A2A2A2A2F20090909766172206974656D203D206F7574646174656453656C6641636365707465644D6F64756C65735B695D3B0A2F2A2A2A2A2A2A2F200909096D6F64756C654964203D206974656D2E6D6F64756C653B0A2F2A2A2A2A2A2A2F';
wwv_flow_api.g_varchar2_table(240) := '20090909686F7443757272656E74506172656E7473203D205B6D6F64756C6549645D3B0A2F2A2A2A2A2A2A2F20090909747279207B0A2F2A2A2A2A2A2A2F20090909095F5F7765627061636B5F726571756972655F5F286D6F64756C654964293B0A2F2A';
wwv_flow_api.g_varchar2_table(241) := '2A2A2A2A2A2F200909097D206361746368202865727229207B0A2F2A2A2A2A2A2A2F200909090969662028747970656F66206974656D2E6572726F7248616E646C6572203D3D3D202266756E6374696F6E2229207B0A2F2A2A2A2A2A2A2F200909090909';
wwv_flow_api.g_varchar2_table(242) := '747279207B0A2F2A2A2A2A2A2A2F200909090909096974656D2E6572726F7248616E646C657228657272293B0A2F2A2A2A2A2A2A2F2009090909097D20636174636820286572723229207B0A2F2A2A2A2A2A2A2F20090909090909696620286F7074696F';
wwv_flow_api.g_varchar2_table(243) := '6E732E6F6E4572726F72656429207B0A2F2A2A2A2A2A2A2F20090909090909096F7074696F6E732E6F6E4572726F726564287B0A2F2A2A2A2A2A2A2F200909090909090909747970653A202273656C662D6163636570742D6572726F722D68616E646C65';
wwv_flow_api.g_varchar2_table(244) := '722D6572726F726564222C0A2F2A2A2A2A2A2A2F2009090909090909096D6F64756C6549643A206D6F64756C6549642C0A2F2A2A2A2A2A2A2F2009090909090909096572726F723A20657272322C0A2F2A2A2A2A2A2A2F2009090909090909096F726967';
wwv_flow_api.g_varchar2_table(245) := '696E616C4572726F723A206572720A2F2A2A2A2A2A2A2F20090909090909097D293B0A2F2A2A2A2A2A2A2F200909090909097D0A2F2A2A2A2A2A2A2F2009090909090969662028216F7074696F6E732E69676E6F72654572726F72656429207B0A2F2A2A';
wwv_flow_api.g_varchar2_table(246) := '2A2A2A2A2F200909090909090969662028216572726F7229206572726F72203D20657272323B0A2F2A2A2A2A2A2A2F200909090909097D0A2F2A2A2A2A2A2A2F2009090909090969662028216572726F7229206572726F72203D206572723B0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(247) := '2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F20090909097D20656C7365207B0A2F2A2A2A2A2A2A2F200909090909696620286F7074696F6E732E6F6E4572726F72656429207B0A2F2A2A2A2A2A2A2F200909090909096F7074696F6E732E6F6E4572';
wwv_flow_api.g_varchar2_table(248) := '726F726564287B0A2F2A2A2A2A2A2A2F2009090909090909747970653A202273656C662D6163636570742D6572726F726564222C0A2F2A2A2A2A2A2A2F20090909090909096D6F64756C6549643A206D6F64756C6549642C0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(249) := '09090909096572726F723A206572720A2F2A2A2A2A2A2A2F200909090909097D293B0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F20090909090969662028216F7074696F6E732E69676E6F72654572726F72656429207B0A2F2A2A2A2A';
wwv_flow_api.g_varchar2_table(250) := '2A2A2F2009090909090969662028216572726F7229206572726F72203D206572723B0A2F2A2A2A2A2A2A2F2009090909097D0A2F2A2A2A2A2A2A2F20090909097D0A2F2A2A2A2A2A2A2F200909097D0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(251) := '2F0A2F2A2A2A2A2A2A2F2009092F2F2068616E646C65206572726F727320696E206163636570742068616E646C65727320616E642073656C66206163636570746564206D6F64756C65206C6F61640A2F2A2A2A2A2A2A2F200909696620286572726F7229';
wwv_flow_api.g_varchar2_table(252) := '207B0A2F2A2A2A2A2A2A2F20090909686F7453657453746174757328226661696C22293B0A2F2A2A2A2A2A2A2F2009090972657475726E2050726F6D6973652E72656A656374286572726F72293B0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F';
wwv_flow_api.g_varchar2_table(253) := '0A2F2A2A2A2A2A2A2F200909686F74536574537461747573282269646C6522293B0A2F2A2A2A2A2A2A2F20090972657475726E206E65772050726F6D6973652866756E6374696F6E287265736F6C766529207B0A2F2A2A2A2A2A2A2F200909097265736F';
wwv_flow_api.g_varchar2_table(254) := '6C7665286F757464617465644D6F64756C6573293B0A2F2A2A2A2A2A2A2F2009097D293B0A2F2A2A2A2A2A2A2F20097D0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F20546865206D6F64756C652063616368650A2F2A2A2A2A2A2A2F20097661';
wwv_flow_api.g_varchar2_table(255) := '7220696E7374616C6C65644D6F64756C6573203D207B7D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F2054686520726571756972652066756E6374696F6E0A2F2A2A2A2A2A2A2F200966756E6374696F6E205F5F7765627061636B5F726571';
wwv_flow_api.g_varchar2_table(256) := '756972655F5F286D6F64756C65496429207B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009092F2F20436865636B206966206D6F64756C6520697320696E2063616368650A2F2A2A2A2A2A2A2F200909696628696E7374616C6C65644D6F64756C6573';
wwv_flow_api.g_varchar2_table(257) := '5B6D6F64756C6549645D29207B0A2F2A2A2A2A2A2A2F2009090972657475726E20696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D2E6578706F7274733B0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F2009092F2F2043726561';
wwv_flow_api.g_varchar2_table(258) := '74652061206E6577206D6F64756C652028616E642070757420697420696E746F20746865206361636865290A2F2A2A2A2A2A2A2F200909766172206D6F64756C65203D20696E7374616C6C65644D6F64756C65735B6D6F64756C6549645D203D207B0A2F';
wwv_flow_api.g_varchar2_table(259) := '2A2A2A2A2A2A2F20090909693A206D6F64756C6549642C0A2F2A2A2A2A2A2A2F200909096C3A2066616C73652C0A2F2A2A2A2A2A2A2F200909096578706F7274733A207B7D2C0A2F2A2A2A2A2A2A2F20090909686F743A20686F744372656174654D6F64';
wwv_flow_api.g_varchar2_table(260) := '756C65286D6F64756C654964292C0A2F2A2A2A2A2A2A2F20090909706172656E74733A2028686F7443757272656E74506172656E747354656D70203D20686F7443757272656E74506172656E74732C20686F7443757272656E74506172656E7473203D20';
wwv_flow_api.g_varchar2_table(261) := '5B5D2C20686F7443757272656E74506172656E747354656D70292C0A2F2A2A2A2A2A2A2F200909096368696C6472656E3A205B5D0A2F2A2A2A2A2A2A2F2009097D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009092F2F2045786563757465207468';
wwv_flow_api.g_varchar2_table(262) := '65206D6F64756C652066756E6374696F6E0A2F2A2A2A2A2A2A2F2009096D6F64756C65735B6D6F64756C6549645D2E63616C6C286D6F64756C652E6578706F7274732C206D6F64756C652C206D6F64756C652E6578706F7274732C20686F744372656174';
wwv_flow_api.g_varchar2_table(263) := '6552657175697265286D6F64756C65496429293B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009092F2F20466C616720746865206D6F64756C65206173206C6F616465640A2F2A2A2A2A2A2A2F2009096D6F64756C652E6C203D20747275653B0A2F2A';
wwv_flow_api.g_varchar2_table(264) := '2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F2009092F2F2052657475726E20746865206578706F727473206F6620746865206D6F64756C650A2F2A2A2A2A2A2A2F20090972657475726E206D6F64756C652E6578706F7274733B0A2F2A2A2A2A2A2A2F20097D0A';
wwv_flow_api.g_varchar2_table(265) := '2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F206578706F736520746865206D6F64756C6573206F626A65637420285F5F7765627061636B5F6D6F64756C65735F5F290A2F2A2A2A2A2A2A2F20095F5F7765627061636B5F72';
wwv_flow_api.g_varchar2_table(266) := '6571756972655F5F2E6D203D206D6F64756C65733B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F206578706F736520746865206D6F64756C652063616368650A2F2A2A2A2A2A2A2F20095F5F7765627061636B5F726571756972655F5F2E6320';
wwv_flow_api.g_varchar2_table(267) := '3D20696E7374616C6C65644D6F64756C65733B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F20646566696E65206765747465722066756E6374696F6E20666F72206861726D6F6E79206578706F7274730A2F2A2A2A2A2A2A2F20095F5F776562';
wwv_flow_api.g_varchar2_table(268) := '7061636B5F726571756972655F5F2E64203D2066756E6374696F6E286578706F7274732C206E616D652C2067657474657229207B0A2F2A2A2A2A2A2A2F200909696628215F5F7765627061636B5F726571756972655F5F2E6F286578706F7274732C206E';
wwv_flow_api.g_varchar2_table(269) := '616D652929207B0A2F2A2A2A2A2A2A2F200909094F626A6563742E646566696E6550726F7065727479286578706F7274732C206E616D652C207B20656E756D657261626C653A20747275652C206765743A20676574746572207D293B0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(270) := '2F2009097D0A2F2A2A2A2A2A2A2F20097D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F20646566696E65205F5F65734D6F64756C65206F6E206578706F7274730A2F2A2A2A2A2A2A2F20095F5F7765627061636B5F726571756972655F5F2E';
wwv_flow_api.g_varchar2_table(271) := '72203D2066756E6374696F6E286578706F72747329207B0A2F2A2A2A2A2A2A2F200909696628747970656F662053796D626F6C20213D3D2027756E646566696E6564272026262053796D626F6C2E746F537472696E6754616729207B0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(272) := '2F200909094F626A6563742E646566696E6550726F7065727479286578706F7274732C2053796D626F6C2E746F537472696E675461672C207B2076616C75653A20274D6F64756C6527207D293B0A2F2A2A2A2A2A2A2F2009097D0A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(273) := '09094F626A6563742E646566696E6550726F7065727479286578706F7274732C20275F5F65734D6F64756C65272C207B2076616C75653A2074727565207D293B0A2F2A2A2A2A2A2A2F20097D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F20';
wwv_flow_api.g_varchar2_table(274) := '63726561746520612066616B65206E616D657370616365206F626A6563740A2F2A2A2A2A2A2A2F20092F2F206D6F6465202620313A2076616C75652069732061206D6F64756C652069642C20726571756972652069740A2F2A2A2A2A2A2A2F20092F2F20';
wwv_flow_api.g_varchar2_table(275) := '6D6F6465202620323A206D6572676520616C6C2070726F70657274696573206F662076616C756520696E746F20746865206E730A2F2A2A2A2A2A2A2F20092F2F206D6F6465202620343A2072657475726E2076616C7565207768656E20616C7265616479';
wwv_flow_api.g_varchar2_table(276) := '206E73206F626A6563740A2F2A2A2A2A2A2A2F20092F2F206D6F6465202620387C313A20626568617665206C696B6520726571756972650A2F2A2A2A2A2A2A2F20095F5F7765627061636B5F726571756972655F5F2E74203D2066756E6374696F6E2876';
wwv_flow_api.g_varchar2_table(277) := '616C75652C206D6F646529207B0A2F2A2A2A2A2A2A2F2009096966286D6F646520262031292076616C7565203D205F5F7765627061636B5F726571756972655F5F2876616C7565293B0A2F2A2A2A2A2A2A2F2009096966286D6F64652026203829207265';
wwv_flow_api.g_varchar2_table(278) := '7475726E2076616C75653B0A2F2A2A2A2A2A2A2F200909696628286D6F6465202620342920262620747970656F662076616C7565203D3D3D20276F626A656374272026262076616C75652026262076616C75652E5F5F65734D6F64756C65292072657475';
wwv_flow_api.g_varchar2_table(279) := '726E2076616C75653B0A2F2A2A2A2A2A2A2F200909766172206E73203D204F626A6563742E637265617465286E756C6C293B0A2F2A2A2A2A2A2A2F2009095F5F7765627061636B5F726571756972655F5F2E72286E73293B0A2F2A2A2A2A2A2A2F200909';
wwv_flow_api.g_varchar2_table(280) := '4F626A6563742E646566696E6550726F7065727479286E732C202764656661756C74272C207B20656E756D657261626C653A20747275652C2076616C75653A2076616C7565207D293B0A2F2A2A2A2A2A2A2F2009096966286D6F64652026203220262620';
wwv_flow_api.g_varchar2_table(281) := '747970656F662076616C756520213D2027737472696E67272920666F7228766172206B657920696E2076616C756529205F5F7765627061636B5F726571756972655F5F2E64286E732C206B65792C2066756E6374696F6E286B657929207B207265747572';
wwv_flow_api.g_varchar2_table(282) := '6E2076616C75655B6B65795D3B207D2E62696E64286E756C6C2C206B657929293B0A2F2A2A2A2A2A2A2F20090972657475726E206E733B0A2F2A2A2A2A2A2A2F20097D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F2067657444656661756C';
wwv_flow_api.g_varchar2_table(283) := '744578706F72742066756E6374696F6E20666F7220636F6D7061746962696C6974792077697468206E6F6E2D6861726D6F6E79206D6F64756C65730A2F2A2A2A2A2A2A2F20095F5F7765627061636B5F726571756972655F5F2E6E203D2066756E637469';
wwv_flow_api.g_varchar2_table(284) := '6F6E286D6F64756C6529207B0A2F2A2A2A2A2A2A2F20090976617220676574746572203D206D6F64756C65202626206D6F64756C652E5F5F65734D6F64756C65203F0A2F2A2A2A2A2A2A2F2009090966756E6374696F6E2067657444656661756C742829';
wwv_flow_api.g_varchar2_table(285) := '207B2072657475726E206D6F64756C655B2764656661756C74275D3B207D203A0A2F2A2A2A2A2A2A2F2009090966756E6374696F6E206765744D6F64756C654578706F7274732829207B2072657475726E206D6F64756C653B207D3B0A2F2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(286) := '2F2009095F5F7765627061636B5F726571756972655F5F2E64286765747465722C202761272C20676574746572293B0A2F2A2A2A2A2A2A2F20090972657475726E206765747465723B0A2F2A2A2A2A2A2A2F20097D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A';
wwv_flow_api.g_varchar2_table(287) := '2A2A2A2F20092F2F204F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C0A2F2A2A2A2A2A2A2F20095F5F7765627061636B5F726571756972655F5F2E6F203D2066756E6374696F6E286F626A6563742C2070726F';
wwv_flow_api.g_varchar2_table(288) := '706572747929207B2072657475726E204F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C286F626A6563742C2070726F7065727479293B207D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F205F5F77';
wwv_flow_api.g_varchar2_table(289) := '65627061636B5F7075626C69635F706174685F5F0A2F2A2A2A2A2A2A2F20095F5F7765627061636B5F726571756972655F5F2E70203D2022223B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F2F205F5F7765627061636B5F686173685F5F0A2F2A';
wwv_flow_api.g_varchar2_table(290) := '2A2A2A2A2A2F20095F5F7765627061636B5F726571756972655F5F2E68203D2066756E6374696F6E2829207B2072657475726E20686F7443757272656E74486173683B207D3B0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20092F';
wwv_flow_api.g_varchar2_table(291) := '2F204C6F616420656E747279206D6F64756C6520616E642072657475726E206578706F7274730A2F2A2A2A2A2A2A2F200972657475726E20686F7443726561746552657175697265283029285F5F7765627061636B5F726571756972655F5F2E73203D20';
wwv_flow_api.g_varchar2_table(292) := '30293B0A2F2A2A2A2A2A2A2F207D290A2F2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2F0A2F2A2A2A2A2A2A2F20';
wwv_flow_api.g_varchar2_table(293) := '287B0A0A2F2A2A2A2F20222E2E2F2E2E2F736F757263652F696D616765732F6A732F676C6F62616C2E6A73223A0A2F2A212A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(294) := '2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A212A5C0A2020212A2A2A20433A2F55736572732F64656E6965646F2F446F63756D656E74732F50726976652F7265706F72745F66696C746572732F736F757263652F696D61';
wwv_flow_api.g_varchar2_table(295) := '6765732F6A732F676C6F62616C2E6A73202A2A2A210A20205C2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(296) := '2A2A2A2A2A2A2A2F0A2F2A21206E6F206578706F7274732070726F7669646564202A2F0A2F2A2A2A2F202866756E6374696F6E286D6F64756C652C205F5F7765627061636B5F6578706F7274735F5F2C205F5F7765627061636B5F726571756972655F5F';
wwv_flow_api.g_varchar2_table(297) := '29207B0A0A2275736520737472696374223B0A6576616C28225F5F7765627061636B5F726571756972655F5F2E72285F5F7765627061636B5F6578706F7274735F5F293B5C6E2F2A206861726D6F6E7920696D706F7274202A2F20766172205F7265706F';
wwv_flow_api.g_varchar2_table(298) := '72745F66696C746572735F5F5745425041434B5F494D504F525445445F4D4F44554C455F305F5F203D205F5F7765627061636B5F726571756972655F5F282F2A21202E2F7265706F72745F66696C74657273202A2F205C222E2E2F2E2E2F736F75726365';
wwv_flow_api.g_varchar2_table(299) := '2F696D616765732F6A732F7265706F72745F66696C746572732E6A735C22293B5C6E5C6E77696E646F772E7270745F66696C74657273203D205F7265706F72745F66696C746572735F5F5745425041434B5F494D504F525445445F4D4F44554C455F305F';
wwv_flow_api.g_varchar2_table(300) := '5F5B5C227265706F72745F66696C746572735C225D3B5C6E5C6E2F2F2320736F7572636555524C3D7765627061636B3A2F2F2F433A2F55736572732F64656E6965646F2F446F63756D656E74732F50726976652F7265706F72745F66696C746572732F73';
wwv_flow_api.g_varchar2_table(301) := '6F757263652F696D616765732F6A732F676C6F62616C2E6A733F22293B0A0A2F2A2A2A2F207D292C0A0A2F2A2A2A2F20222E2E2F2E2E2F736F757263652F696D616765732F6A732F7265706F72745F66696C746572732E6A73223A0A2F2A212A2A2A2A2A';
wwv_flow_api.g_varchar2_table(302) := '2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A212A5C0A2020212A2A2A20433A2F55';
wwv_flow_api.g_varchar2_table(303) := '736572732F64656E6965646F2F446F63756D656E74732F50726976652F7265706F72745F66696C746572732F736F757263652F696D616765732F6A732F7265706F72745F66696C746572732E6A73202A2A2A210A20205C2A2A2A2A2A2A2A2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(304) := '2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2F0A2F2A21206578706F7274732070726F76696465643A';
wwv_flow_api.g_varchar2_table(305) := '207265706F72745F66696C74657273202A2F0A2F2A2A2A2F202866756E6374696F6E286D6F64756C652C205F5F7765627061636B5F6578706F7274735F5F2C205F5F7765627061636B5F726571756972655F5F29207B0A0A227573652073747269637422';
wwv_flow_api.g_varchar2_table(306) := '3B0A6576616C28225F5F7765627061636B5F726571756972655F5F2E72285F5F7765627061636B5F6578706F7274735F5F293B5C6E2F2A206861726D6F6E79206578706F7274202862696E64696E6729202A2F205F5F7765627061636B5F726571756972';
wwv_flow_api.g_varchar2_table(307) := '655F5F2E64285F5F7765627061636B5F6578706F7274735F5F2C205C227265706F72745F66696C746572735C222C2066756E6374696F6E2829207B2072657475726E207265706F72745F66696C746572733B207D293B5C6E2F2A2A5C725C6E202A206672';
wwv_flow_api.g_varchar2_table(308) := '616D65776F726B20666F72207265706F72742066696C7465727320706C7567696E5C725C6E202A2F5C6E636F6E7374207265706F72745F66696C74657273203D20282829203D3E207B5C6E2020636F6E7374206170706C7946696C746572203D20636F6E';
wwv_flow_api.g_varchar2_table(309) := '666967203D3E207B5C6E20202020636F6E6669672E73657474696E6773203D20636F6E6669672E73657474696E67732E6D61702873657474696E67203D3E207B5C6E20202020202073657474696E672E76616C7565203D2024762873657474696E672E69';
wwv_flow_api.g_varchar2_table(310) := '74656D293B5C6E5C6E2020202020206966202873657474696E672E6F70657261746F72203D3D3D20274C494B45272026262073657474696E672E76616C756520213D3D205C225C2229207B5C6E202020202020202073657474696E672E76616C7565203D';
wwv_flow_api.g_varchar2_table(311) := '206025247B73657474696E672E76616C75657D25603B5C6E2020202020207D5C6E5C6E20202020202072657475726E2073657474696E673B5C6E202020207D293B5C6E20202020636F6E73742070726F6D697365203D20617065782E7365727665722E70';
wwv_flow_api.g_varchar2_table(312) := '6C7567696E28636F6E6669672E616A61785F6964656E7469666965722C207B5C6E2020202020207830313A204A534F4E2E737472696E6769667928636F6E666967295C6E202020207D293B5C6E2020202070726F6D6973652E646F6E652872657370203D';
wwv_flow_api.g_varchar2_table(313) := '3E207B5C6E20202020202069662028726573702E7375636365737329207B5C6E2020202020202020617065782E726567696F6E28636F6E6669672E7374617469635F6964292E7265667265736828293B5C6E2020202020207D20656C7365207B5C6E2020';
wwv_flow_api.g_varchar2_table(314) := '20202020202069662028617065782E64656275672E6765744C6576656C2829203D3D3D203429207B5C6E20202020202020202020636F6E736F6C652E6572726F7228726573702E657272293B5C6E20202020202020207D20656C7365207B5C6E20202020';
wwv_flow_api.g_varchar2_table(315) := '202020202020636F6E736F6C652E6572726F7228604572726F7220647572696E6720657865637574696F6E206F662066756E6374696F6E207265706F72742066696C746572732E205475726E206F6E20646562756720666F72206D6F726520696E666F2E';
wwv_flow_api.g_varchar2_table(316) := '60293B5C6E20202020202020207D5C6E2020202020207D5C6E202020207D293B5C6E20207D3B5C6E5C6E202072657475726E207B5C6E202020206170706C7946696C7465725C6E20207D3B5C6E7D2928293B5C6E5C6E5C6E5C6E2F2F2320736F75726365';
wwv_flow_api.g_varchar2_table(317) := '55524C3D7765627061636B3A2F2F2F433A2F55736572732F64656E6965646F2F446F63756D656E74732F50726976652F7265706F72745F66696C746572732F736F757263652F696D616765732F6A732F7265706F72745F66696C746572732E6A733F2229';
wwv_flow_api.g_varchar2_table(318) := '3B0A0A2F2A2A2A2F207D292C0A0A2F2A2A2A2F20303A0A2F2A212A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A212A5C0A2020212A2A2A206D756C7469202E2E2F2E2E2F736F757263';
wwv_flow_api.g_varchar2_table(319) := '652F696D616765732F6A732F676C6F62616C2E6A73202A2A2A210A20205C2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2F0A2F2A21206E6F20737461746963206578706F72747320';
wwv_flow_api.g_varchar2_table(320) := '666F756E64202A2F0A2F2A2A2A2F202866756E6374696F6E286D6F64756C652C206578706F7274732C205F5F7765627061636B5F726571756972655F5F29207B0A0A6576616C28226D6F64756C652E6578706F727473203D205F5F7765627061636B5F72';
wwv_flow_api.g_varchar2_table(321) := '6571756972655F5F282F2A21202E2E2F2E2E2F736F757263652F696D616765732F6A732F676C6F62616C2E6A73202A2F5C222E2E2F2E2E2F736F757263652F696D616765732F6A732F676C6F62616C2E6A735C22293B5C6E5C6E5C6E2F2F2320736F7572';
wwv_flow_api.g_varchar2_table(322) := '636555524C3D7765627061636B3A2F2F2F6D756C74695F2E2E2F2E2E2F736F757263652F696D616765732F6A732F676C6F62616C2E6A733F22293B0A0A2F2A2A2A2F207D290A0A2F2A2A2A2A2A2A2F207D293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11319829403656536)
,p_plugin_id=>wwv_flow_api.id(11318940068656509)
,p_file_name=>'filters.bundle.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2166756E6374696F6E2865297B76617220723D77696E646F772E7765627061636B486F745570646174653B77696E646F772E7765627061636B486F745570646174653D66756E6374696F6E28652C6E297B2166756E6374696F6E28652C72297B69662821';
wwv_flow_api.g_varchar2_table(2) := '4F5B655D7C7C21775B655D2972657475726E3B666F7228766172206E20696E20775B655D3D21312C72294F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C28722C6E29262628765B6E5D3D725B6E5D293B303D3D';
wwv_flow_api.g_varchar2_table(3) := '2D2D622626303D3D3D6D26267828297D28652C6E292C7226267228652C6E297D3B766172206E2C743D21302C6F3D226131343565353161346533343835643531386537222C693D3165342C633D7B7D2C643D5B5D2C613D5B5D3B66756E6374696F6E2073';
wwv_flow_api.g_varchar2_table(4) := '2865297B76617220723D505B655D3B69662821722972657475726E20483B76617220743D66756E6374696F6E2874297B72657475726E20722E686F742E6163746976653F28505B745D3F2D313D3D3D505B745D2E706172656E74732E696E6465784F6628';
wwv_flow_api.g_varchar2_table(5) := '65292626505B745D2E706172656E74732E707573682865293A28643D5B655D2C6E3D74292C2D313D3D3D722E6368696C6472656E2E696E6465784F662874292626722E6368696C6472656E2E70757368287429293A28636F6E736F6C652E7761726E2822';
wwv_flow_api.g_varchar2_table(6) := '5B484D525D20756E6578706563746564207265717569726528222B742B22292066726F6D20646973706F736564206D6F64756C6520222B65292C643D5B5D292C482874297D2C6F3D66756E6374696F6E2865297B72657475726E7B636F6E666967757261';
wwv_flow_api.g_varchar2_table(7) := '626C653A21302C656E756D657261626C653A21302C6765743A66756E6374696F6E28297B72657475726E20485B655D7D2C7365743A66756E6374696F6E2872297B485B655D3D727D7D7D3B666F7228766172206920696E2048294F626A6563742E70726F';
wwv_flow_api.g_varchar2_table(8) := '746F747970652E6861734F776E50726F70657274792E63616C6C28482C69292626226522213D3D692626227422213D3D6926264F626A6563742E646566696E6550726F706572747928742C692C6F286929293B72657475726E20742E653D66756E637469';
wwv_flow_api.g_varchar2_table(9) := '6F6E2865297B72657475726E227265616479223D3D3D7026266628227072657061726522292C6D2B2B2C482E652865292E7468656E28722C2866756E6374696F6E2865297B7468726F77207228292C657D29293B66756E6374696F6E207228297B6D2D2D';
wwv_flow_api.g_varchar2_table(10) := '2C2270726570617265223D3D3D70262628675B655D7C7C442865292C303D3D3D6D2626303D3D3D622626782829297D7D2C742E743D66756E6374696F6E28652C72297B72657475726E20312672262628653D74286529292C482E7428652C2D322672297D';
wwv_flow_api.g_varchar2_table(11) := '2C747D66756E6374696F6E206C2865297B76617220723D7B5F6163636570746564446570656E64656E636965733A7B7D2C5F6465636C696E6564446570656E64656E636965733A7B7D2C5F73656C6641636365707465643A21312C5F73656C664465636C';
wwv_flow_api.g_varchar2_table(12) := '696E65643A21312C5F646973706F736548616E646C6572733A5B5D2C5F6D61696E3A6E213D3D652C6163746976653A21302C6163636570743A66756E6374696F6E28652C6E297B696628766F696420303D3D3D6529722E5F73656C664163636570746564';
wwv_flow_api.g_varchar2_table(13) := '3D21303B656C7365206966282266756E6374696F6E223D3D747970656F66206529722E5F73656C6641636365707465643D653B656C736520696628226F626A656374223D3D747970656F66206529666F722876617220743D303B743C652E6C656E677468';
wwv_flow_api.g_varchar2_table(14) := '3B742B2B29722E5F6163636570746564446570656E64656E636965735B655B745D5D3D6E7C7C66756E6374696F6E28297B7D3B656C736520722E5F6163636570746564446570656E64656E636965735B655D3D6E7C7C66756E6374696F6E28297B7D7D2C';
wwv_flow_api.g_varchar2_table(15) := '6465636C696E653A66756E6374696F6E2865297B696628766F696420303D3D3D6529722E5F73656C664465636C696E65643D21303B656C736520696628226F626A656374223D3D747970656F66206529666F7228766172206E3D303B6E3C652E6C656E67';
wwv_flow_api.g_varchar2_table(16) := '74683B6E2B2B29722E5F6465636C696E6564446570656E64656E636965735B655B6E5D5D3D21303B656C736520722E5F6465636C696E6564446570656E64656E636965735B655D3D21307D2C646973706F73653A66756E6374696F6E2865297B722E5F64';
wwv_flow_api.g_varchar2_table(17) := '6973706F736548616E646C6572732E707573682865297D2C616464446973706F736548616E646C65723A66756E6374696F6E2865297B722E5F646973706F736548616E646C6572732E707573682865297D2C72656D6F7665446973706F736548616E646C';
wwv_flow_api.g_varchar2_table(18) := '65723A66756E6374696F6E2865297B766172206E3D722E5F646973706F736548616E646C6572732E696E6465784F662865293B6E3E3D302626722E5F646973706F736548616E646C6572732E73706C696365286E2C31297D2C636865636B3A6A2C617070';
wwv_flow_api.g_varchar2_table(19) := '6C793A452C7374617475733A66756E6374696F6E2865297B69662821652972657475726E20703B752E707573682865297D2C61646453746174757348616E646C65723A66756E6374696F6E2865297B752E707573682865297D2C72656D6F766553746174';
wwv_flow_api.g_varchar2_table(20) := '757348616E646C65723A66756E6374696F6E2865297B76617220723D752E696E6465784F662865293B723E3D302626752E73706C69636528722C31297D2C646174613A635B655D7D3B72657475726E206E3D766F696420302C727D76617220753D5B5D2C';
wwv_flow_api.g_varchar2_table(21) := '703D2269646C65223B66756E6374696F6E20662865297B703D653B666F722876617220723D303B723C752E6C656E6774683B722B2B29755B725D2E63616C6C286E756C6C2C65297D76617220682C762C792C623D302C6D3D302C673D7B7D2C773D7B7D2C';
wwv_flow_api.g_varchar2_table(22) := '4F3D7B7D3B66756E6374696F6E205F2865297B72657475726E2B652B22223D3D3D653F2B653A657D66756E6374696F6E206A2865297B6966282269646C6522213D3D70297468726F77206E6577204572726F722822636865636B2829206973206F6E6C79';
wwv_flow_api.g_varchar2_table(23) := '20616C6C6F77656420696E2069646C652073746174757322293B72657475726E20743D652C662822636865636B22292C28723D692C723D727C7C3165342C6E65772050726F6D697365282866756E6374696F6E28652C6E297B69662822756E646566696E';
wwv_flow_api.g_varchar2_table(24) := '6564223D3D747970656F6620584D4C48747470526571756573742972657475726E206E286E6577204572726F7228224E6F2062726F7773657220737570706F72742229293B7472797B76617220743D6E657720584D4C48747470526571756573742C693D';
wwv_flow_api.g_varchar2_table(25) := '482E702B22222B6F2B222E686F742D7570646174652E6A736F6E223B742E6F70656E2822474554222C692C2130292C742E74696D656F75743D722C742E73656E64286E756C6C297D63617463682865297B72657475726E206E2865297D742E6F6E726561';
wwv_flow_api.g_varchar2_table(26) := '647973746174656368616E67653D66756E6374696F6E28297B696628343D3D3D742E7265616479537461746529696628303D3D3D742E737461747573296E286E6577204572726F7228224D616E6966657374207265717565737420746F20222B692B2220';
wwv_flow_api.g_varchar2_table(27) := '74696D6564206F75742E2229293B656C7365206966283430343D3D3D742E737461747573296528293B656C736520696628323030213D3D742E7374617475732626333034213D3D742E737461747573296E286E6577204572726F7228224D616E69666573';
wwv_flow_api.g_varchar2_table(28) := '74207265717565737420746F20222B692B22206661696C65642E2229293B656C73657B7472797B76617220723D4A534F4E2E706172736528742E726573706F6E736554657874297D63617463682865297B72657475726E20766F6964206E2865297D6528';
wwv_flow_api.g_varchar2_table(29) := '72297D7D7D2929292E7468656E282866756E6374696F6E2865297B69662821652972657475726E2066282269646C6522292C6E756C6C3B773D7B7D2C673D7B7D2C4F3D652E632C793D652E682C6628227072657061726522293B76617220723D6E657720';
wwv_flow_api.g_varchar2_table(30) := '50726F6D697365282866756E6374696F6E28652C72297B683D7B7265736F6C76653A652C72656A6563743A727D7D29293B763D7B7D3B72657475726E20442830292C2270726570617265223D3D3D702626303D3D3D6D2626303D3D3D6226267828292C72';
wwv_flow_api.g_varchar2_table(31) := '7D29293B76617220727D66756E6374696F6E20442865297B4F5B655D3F28775B655D3D21302C622B2B2C66756E6374696F6E2865297B76617220723D646F63756D656E742E637265617465456C656D656E74282273637269707422293B722E6368617273';
wwv_flow_api.g_varchar2_table(32) := '65743D227574662D38222C722E7372633D482E702B22222B652B222E222B6F2B222E686F742D7570646174652E6A73222C646F63756D656E742E686561642E617070656E644368696C642872297D286529293A675B655D3D21307D66756E6374696F6E20';
wwv_flow_api.g_varchar2_table(33) := '7828297B662822726561647922293B76617220653D683B696628683D6E756C6C2C6529696628742950726F6D6973652E7265736F6C766528292E7468656E282866756E6374696F6E28297B72657475726E20452874297D29292E7468656E282866756E63';
wwv_flow_api.g_varchar2_table(34) := '74696F6E2872297B652E7265736F6C76652872297D292C2866756E6374696F6E2872297B652E72656A6563742872297D29293B656C73657B76617220723D5B5D3B666F7228766172206E20696E2076294F626A6563742E70726F746F747970652E686173';
wwv_flow_api.g_varchar2_table(35) := '4F776E50726F70657274792E63616C6C28762C6E292626722E70757368285F286E29293B652E7265736F6C76652872297D7D66756E6374696F6E20452872297B69662822726561647922213D3D70297468726F77206E6577204572726F7228226170706C';
wwv_flow_api.g_varchar2_table(36) := '792829206973206F6E6C7920616C6C6F77656420696E2072656164792073746174757322293B766172206E2C742C692C612C733B66756E6374696F6E206C2865297B666F722876617220723D5B655D2C6E3D7B7D2C743D722E6D6170282866756E637469';
wwv_flow_api.g_varchar2_table(37) := '6F6E2865297B72657475726E7B636861696E3A5B655D2C69643A657D7D29293B742E6C656E6774683E303B297B766172206F3D742E706F7028292C693D6F2E69642C633D6F2E636861696E3B69662828613D505B695D29262621612E686F742E5F73656C';
wwv_flow_api.g_varchar2_table(38) := '664163636570746564297B696628612E686F742E5F73656C664465636C696E65642972657475726E7B747970653A2273656C662D6465636C696E6564222C636861696E3A632C6D6F64756C6549643A697D3B696628612E686F742E5F6D61696E29726574';
wwv_flow_api.g_varchar2_table(39) := '75726E7B747970653A22756E6163636570746564222C636861696E3A632C6D6F64756C6549643A697D3B666F722876617220643D303B643C612E706172656E74732E6C656E6774683B642B2B297B76617220733D612E706172656E74735B645D2C6C3D50';
wwv_flow_api.g_varchar2_table(40) := '5B735D3B6966286C297B6966286C2E686F742E5F6465636C696E6564446570656E64656E636965735B695D2972657475726E7B747970653A226465636C696E6564222C636861696E3A632E636F6E636174285B735D292C6D6F64756C6549643A692C7061';
wwv_flow_api.g_varchar2_table(41) := '72656E7449643A737D3B2D313D3D3D722E696E6465784F662873292626286C2E686F742E5F6163636570746564446570656E64656E636965735B695D3F286E5B735D7C7C286E5B735D3D5B5D292C75286E5B735D2C5B695D29293A2864656C657465206E';
wwv_flow_api.g_varchar2_table(42) := '5B735D2C722E707573682873292C742E70757368287B636861696E3A632E636F6E636174285B735D292C69643A737D2929297D7D7D7D72657475726E7B747970653A226163636570746564222C6D6F64756C6549643A652C6F757464617465644D6F6475';
wwv_flow_api.g_varchar2_table(43) := '6C65733A722C6F75746461746564446570656E64656E636965733A6E7D7D66756E6374696F6E207528652C72297B666F7228766172206E3D303B6E3C722E6C656E6774683B6E2B2B297B76617220743D725B6E5D3B2D313D3D3D652E696E6465784F6628';
wwv_flow_api.g_varchar2_table(44) := '74292626652E707573682874297D7D723D727C7C7B7D3B76617220683D7B7D2C623D5B5D2C6D3D7B7D2C673D66756E6374696F6E28297B636F6E736F6C652E7761726E28225B484D525D20756E6578706563746564207265717569726528222B6A2E6D6F';
wwv_flow_api.g_varchar2_table(45) := '64756C6549642B222920746F20646973706F736564206D6F64756C6522297D3B666F7228766172207720696E2076296966284F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C28762C7729297B766172206A3B73';
wwv_flow_api.g_varchar2_table(46) := '3D5F2877293B76617220443D21312C783D21312C453D21312C493D22223B73776974636828286A3D765B775D3F6C2873293A7B747970653A22646973706F736564222C6D6F64756C6549643A777D292E636861696E262628493D225C6E55706461746520';
wwv_flow_api.g_varchar2_table(47) := '70726F7061676174696F6E3A20222B6A2E636861696E2E6A6F696E2822202D3E202229292C6A2E74797065297B636173652273656C662D6465636C696E6564223A722E6F6E4465636C696E65642626722E6F6E4465636C696E6564286A292C722E69676E';
wwv_flow_api.g_varchar2_table(48) := '6F72654465636C696E65647C7C28443D6E6577204572726F72282241626F727465642062656361757365206F662073656C66206465636C696E653A20222B6A2E6D6F64756C6549642B4929293B627265616B3B63617365226465636C696E6564223A722E';
wwv_flow_api.g_varchar2_table(49) := '6F6E4465636C696E65642626722E6F6E4465636C696E6564286A292C722E69676E6F72654465636C696E65647C7C28443D6E6577204572726F72282241626F727465642062656361757365206F66206465636C696E656420646570656E64656E63793A20';
wwv_flow_api.g_varchar2_table(50) := '222B6A2E6D6F64756C6549642B2220696E20222B6A2E706172656E7449642B4929293B627265616B3B6361736522756E6163636570746564223A722E6F6E556E61636365707465642626722E6F6E556E6163636570746564286A292C722E69676E6F7265';
wwv_flow_api.g_varchar2_table(51) := '556E61636365707465647C7C28443D6E6577204572726F72282241626F72746564206265636175736520222B732B22206973206E6F74206163636570746564222B4929293B627265616B3B63617365226163636570746564223A722E6F6E416363657074';
wwv_flow_api.g_varchar2_table(52) := '65642626722E6F6E4163636570746564286A292C783D21303B627265616B3B6361736522646973706F736564223A722E6F6E446973706F7365642626722E6F6E446973706F736564286A292C453D21303B627265616B3B64656661756C743A7468726F77';
wwv_flow_api.g_varchar2_table(53) := '206E6577204572726F722822556E657863657074696F6E207479706520222B6A2E74797065297D696628442972657475726E2066282261626F727422292C50726F6D6973652E72656A6563742844293B6966287829666F72287320696E206D5B735D3D76';
wwv_flow_api.g_varchar2_table(54) := '5B735D2C7528622C6A2E6F757464617465644D6F64756C6573292C6A2E6F75746461746564446570656E64656E63696573294F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C286A2E6F75746461746564446570';
wwv_flow_api.g_varchar2_table(55) := '656E64656E636965732C7329262628685B735D7C7C28685B735D3D5B5D292C7528685B735D2C6A2E6F75746461746564446570656E64656E636965735B735D29293B452626287528622C5B6A2E6D6F64756C6549645D292C6D5B735D3D67297D76617220';
wwv_flow_api.g_varchar2_table(56) := '6B2C4D3D5B5D3B666F7228743D303B743C622E6C656E6774683B742B2B29733D625B745D2C505B735D2626505B735D2E686F742E5F73656C66416363657074656426266D5B735D213D3D6726264D2E70757368287B6D6F64756C653A732C6572726F7248';
wwv_flow_api.g_varchar2_table(57) := '616E646C65723A505B735D2E686F742E5F73656C6641636365707465647D293B662822646973706F736522292C4F626A6563742E6B657973284F292E666F7245616368282866756E6374696F6E2865297B21313D3D3D4F5B655D262666756E6374696F6E';
wwv_flow_api.g_varchar2_table(58) := '2865297B64656C65746520696E7374616C6C65644368756E6B735B655D7D2865297D29293B666F722876617220412C532C553D622E736C69636528293B552E6C656E6774683E303B29696628733D552E706F7028292C613D505B735D297B76617220713D';
wwv_flow_api.g_varchar2_table(59) := '7B7D2C543D612E686F742E5F646973706F736548616E646C6572733B666F7228693D303B693C542E6C656E6774683B692B2B29286E3D545B695D292871293B666F7228635B735D3D712C612E686F742E6163746976653D21312C64656C65746520505B73';
wwv_flow_api.g_varchar2_table(60) := '5D2C64656C65746520685B735D2C693D303B693C612E6368696C6472656E2E6C656E6774683B692B2B297B766172204C3D505B612E6368696C6472656E5B695D5D3B4C262628286B3D4C2E706172656E74732E696E6465784F66287329293E3D3026264C';
wwv_flow_api.g_varchar2_table(61) := '2E706172656E74732E73706C696365286B2C3129297D7D666F72287320696E2068296966284F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C28682C7329262628613D505B735D2929666F7228533D685B735D2C';
wwv_flow_api.g_varchar2_table(62) := '693D303B693C532E6C656E6774683B692B2B29413D535B695D2C286B3D612E6368696C6472656E2E696E6465784F66284129293E3D302626612E6368696C6472656E2E73706C696365286B2C31293B666F72287320696E206628226170706C7922292C6F';
wwv_flow_api.g_varchar2_table(63) := '3D792C6D294F626A6563742E70726F746F747970652E6861734F776E50726F70657274792E63616C6C286D2C7329262628655B735D3D6D5B735D293B76617220523D6E756C6C3B666F72287320696E2068296966284F626A6563742E70726F746F747970';
wwv_flow_api.g_varchar2_table(64) := '652E6861734F776E50726F70657274792E63616C6C28682C7329262628613D505B735D29297B533D685B735D3B766172204E3D5B5D3B666F7228743D303B743C532E6C656E6774683B742B2B29696628413D535B745D2C6E3D612E686F742E5F61636365';
wwv_flow_api.g_varchar2_table(65) := '70746564446570656E64656E636965735B415D297B6966282D31213D3D4E2E696E6465784F66286E2929636F6E74696E75653B4E2E70757368286E297D666F7228743D303B743C4E2E6C656E6774683B742B2B297B6E3D4E5B745D3B7472797B6E285329';
wwv_flow_api.g_varchar2_table(66) := '7D63617463682865297B722E6F6E4572726F7265642626722E6F6E4572726F726564287B747970653A226163636570742D6572726F726564222C6D6F64756C6549643A732C646570656E64656E637949643A535B745D2C6572726F723A657D292C722E69';
wwv_flow_api.g_varchar2_table(67) := '676E6F72654572726F7265647C7C527C7C28523D65297D7D7D666F7228743D303B743C4D2E6C656E6774683B742B2B297B76617220433D4D5B745D3B733D432E6D6F64756C652C643D5B735D3B7472797B482873297D63617463682865297B6966282266';
wwv_flow_api.g_varchar2_table(68) := '756E6374696F6E223D3D747970656F6620432E6572726F7248616E646C6572297472797B432E6572726F7248616E646C65722865297D6361746368286E297B722E6F6E4572726F7265642626722E6F6E4572726F726564287B747970653A2273656C662D';
wwv_flow_api.g_varchar2_table(69) := '6163636570742D6572726F722D68616E646C65722D6572726F726564222C6D6F64756C6549643A732C6572726F723A6E2C6F726967696E616C4572726F723A657D292C722E69676E6F72654572726F7265647C7C527C7C28523D6E292C527C7C28523D65';
wwv_flow_api.g_varchar2_table(70) := '297D656C736520722E6F6E4572726F7265642626722E6F6E4572726F726564287B747970653A2273656C662D6163636570742D6572726F726564222C6D6F64756C6549643A732C6572726F723A657D292C722E69676E6F72654572726F7265647C7C527C';
wwv_flow_api.g_varchar2_table(71) := '7C28523D65297D7D72657475726E20523F286628226661696C22292C50726F6D6973652E72656A656374285229293A2866282269646C6522292C6E65772050726F6D697365282866756E6374696F6E2865297B652862297D2929297D76617220503D7B7D';
wwv_flow_api.g_varchar2_table(72) := '3B66756E6374696F6E20482872297B696628505B725D2972657475726E20505B725D2E6578706F7274733B766172206E3D505B725D3D7B693A722C6C3A21312C6578706F7274733A7B7D2C686F743A6C2872292C706172656E74733A28613D642C643D5B';
wwv_flow_api.g_varchar2_table(73) := '5D2C61292C6368696C6472656E3A5B5D7D3B72657475726E20655B725D2E63616C6C286E2E6578706F7274732C6E2C6E2E6578706F7274732C73287229292C6E2E6C3D21302C6E2E6578706F7274737D482E6D3D652C482E633D502C482E643D66756E63';
wwv_flow_api.g_varchar2_table(74) := '74696F6E28652C722C6E297B482E6F28652C72297C7C4F626A6563742E646566696E6550726F706572747928652C722C7B656E756D657261626C653A21302C6765743A6E7D297D2C482E723D66756E6374696F6E2865297B22756E646566696E65642221';
wwv_flow_api.g_varchar2_table(75) := '3D747970656F662053796D626F6C262653796D626F6C2E746F537472696E6754616726264F626A6563742E646566696E6550726F706572747928652C53796D626F6C2E746F537472696E675461672C7B76616C75653A224D6F64756C65227D292C4F626A';
wwv_flow_api.g_varchar2_table(76) := '6563742E646566696E6550726F706572747928652C225F5F65734D6F64756C65222C7B76616C75653A21307D297D2C482E743D66756E6374696F6E28652C72297B696628312672262628653D48286529292C3826722972657475726E20653B6966283426';
wwv_flow_api.g_varchar2_table(77) := '722626226F626A656374223D3D747970656F6620652626652626652E5F5F65734D6F64756C652972657475726E20653B766172206E3D4F626A6563742E637265617465286E756C6C293B696628482E72286E292C4F626A6563742E646566696E6550726F';
wwv_flow_api.g_varchar2_table(78) := '7065727479286E2C2264656661756C74222C7B656E756D657261626C653A21302C76616C75653A657D292C322672262622737472696E6722213D747970656F66206529666F7228766172207420696E206529482E64286E2C742C66756E6374696F6E2872';
wwv_flow_api.g_varchar2_table(79) := '297B72657475726E20655B725D7D2E62696E64286E756C6C2C7429293B72657475726E206E7D2C482E6E3D66756E6374696F6E2865297B76617220723D652626652E5F5F65734D6F64756C653F66756E6374696F6E28297B72657475726E20652E646566';
wwv_flow_api.g_varchar2_table(80) := '61756C747D3A66756E6374696F6E28297B72657475726E20657D3B72657475726E20482E6428722C2261222C72292C727D2C482E6F3D66756E6374696F6E28652C72297B72657475726E204F626A6563742E70726F746F747970652E6861734F776E5072';
wwv_flow_api.g_varchar2_table(81) := '6F70657274792E63616C6C28652C72297D2C482E703D22222C482E683D66756E6374696F6E28297B72657475726E206F7D2C7328302928482E733D30297D285B66756E6374696F6E28652C722C6E297B652E6578706F7274733D6E2831297D2C66756E63';
wwv_flow_api.g_varchar2_table(82) := '74696F6E28652C722C6E297B2275736520737472696374223B6E2E722872293B636F6E737420743D7B6170706C7946696C7465723A653D3E7B652E73657474696E67733D652E73657474696E67732E6D617028653D3E28652E76616C75653D247628652E';
wwv_flow_api.g_varchar2_table(83) := '6974656D292C224C494B45223D3D3D652E6F70657261746F7226262222213D3D652E76616C7565262628652E76616C75653D6025247B652E76616C75657D2560292C6529292C617065782E7365727665722E706C7567696E28652E616A61785F6964656E';
wwv_flow_api.g_varchar2_table(84) := '7469666965722C7B7830313A4A534F4E2E737472696E676966792865297D292E646F6E6528723D3E7B722E737563636573733F617065782E726567696F6E28652E7374617469635F6964292E7265667265736828293A343D3D3D617065782E6465627567';
wwv_flow_api.g_varchar2_table(85) := '2E6765744C6576656C28293F636F6E736F6C652E6572726F7228722E657272293A636F6E736F6C652E6572726F7228224572726F7220647572696E6720657865637574696F6E206F662066756E6374696F6E207265706F72742066696C746572732E2054';
wwv_flow_api.g_varchar2_table(86) := '75726E206F6E20646562756720666F72206D6F726520696E666F2E22297D297D7D3B77696E646F772E7270745F66696C746572733D747D5D293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11320256926656538)
,p_plugin_id=>wwv_flow_api.id(11318940068656509)
,p_file_name=>'filters.bundle.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(10249534525662864)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(10121171607662654)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(10216039898662791)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(10249241105662861)
,p_nav_bar_list_template_id=>wwv_flow_api.id(10215840377662791)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(10249534525662864)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'DENIEDO'
,p_last_upd_yyyymmddhh24miss=>'20191218080317'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(10249534525662864)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Plugin repo'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'DENIEDO'
,p_last_upd_yyyymmddhh24miss=>'20191218080318'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10260319909662947)
,p_plug_name=>'Plugin repo'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(10163588455662744)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(10249534525662864)
,p_name=>'report filters'
,p_step_title=>'report filters'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'PLUGINS'
,p_last_upd_yyyymmddhh24miss=>'20200225224517'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10264372995677201)
,p_plug_name=>'Report filters'
,p_icon_css_classes=>'fa-filter'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(10163588455662744)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10264484816677202)
,p_plug_name=>'employees'
,p_region_name=>'employees'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(10169890642662747)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from hr.emp_details_view'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(10264594381677203)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'DENIEDO'
,p_internal_uid=>10264594381677203
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10264663628677204)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10264713700677205)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10264816033677206)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10265249373677210)
,p_db_column_name=>'JOB_ID'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'Job Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10265372085677211)
,p_db_column_name=>'SALARY'
,p_display_order=>80
,p_column_identifier=>'E'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10265432438677212)
,p_db_column_name=>'COMMISSION_PCT'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Commission Pct'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10265529310677213)
,p_db_column_name=>'MANAGER_ID'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'Manager Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10265680604677214)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>110
,p_column_identifier=>'H'
,p_column_label=>'Department Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10265760043677215)
,p_db_column_name=>'LOCATION_ID'
,p_display_order=>120
,p_column_identifier=>'I'
,p_column_label=>'Location Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10265802500677216)
,p_db_column_name=>'COUNTRY_ID'
,p_display_order=>130
,p_column_identifier=>'J'
,p_column_label=>'Country Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10265948421677217)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>140
,p_column_identifier=>'K'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10266000433677218)
,p_db_column_name=>'JOB_TITLE'
,p_display_order=>150
,p_column_identifier=>'L'
,p_column_label=>'Job Title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10266108945677219)
,p_db_column_name=>'CITY'
,p_display_order=>160
,p_column_identifier=>'M'
,p_column_label=>'City'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10266286763677220)
,p_db_column_name=>'STATE_PROVINCE'
,p_display_order=>170
,p_column_identifier=>'N'
,p_column_label=>'State Province'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10266321010677221)
,p_db_column_name=>'COUNTRY_NAME'
,p_display_order=>180
,p_column_identifier=>'O'
,p_column_label=>'Country Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10266441632677222)
,p_db_column_name=>'REGION_NAME'
,p_display_order=>190
,p_column_identifier=>'P'
,p_column_label=>'Region Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(10275161032694718)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'102752'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLOYEE_ID:FIRST_NAME:LAST_NAME:JOB_ID:SALARY:COMMISSION_PCT:MANAGER_ID:DEPARTMENT_ID:LOCATION_ID:COUNTRY_ID:DEPARTMENT_NAME:JOB_TITLE:CITY:STATE_PROVINCE:COUNTRY_NAME:REGION_NAME'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10266500369677223)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(10170913610662748)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10266801368677226)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(10266500369677223)
,p_button_name=>'Filter'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(10227018812662808)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Filter'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10266665366677224)
,p_name=>'P2_FIRST_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(10266500369677223)
,p_prompt=>'First Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(10225946505662802)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10267150554677229)
,p_name=>'P2_LAST_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(10266500369677223)
,p_prompt=>'Last Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(10225946505662802)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10267874729677236)
,p_name=>'Filter report when clicked on FILTER'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(10266801368677226)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10267910348677237)
,p_event_id=>wwv_flow_api.id(10267874729677236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_DENIEDO.REPORT_FILTERS'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(10264484816677202)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'[',
'  { ',
'    "operator":"LIKE",',
'    "item": "P2_FIRST_NAME",',
'    "column": "FIRST_NAME"',
'  },',
'  {',
'    "operator": "EQ",',
'    "item": "P2_LAST_NAME",',
'    "column": "LAST_NAME"',
'  }',
']'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10266735271677225)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_REPORT_FILTERS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'report_filters.set_report_filters',
'  ( p_config => apex_application.g_x01 );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(10249534525662864)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'Plugin repo - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(10127363143662688)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'DENIEDO'
,p_last_upd_yyyymmddhh24miss=>'20191218080318'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10253597707662914)
,p_plug_name=>'Plugin repo'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(10170420045662748)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10258266021662937)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(10253597707662914)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(10145751083662723)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10256374570662932)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(10253597707662914)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10227018812662808)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10253939612662917)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(10253597707662914)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(10225623550662799)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10254341791662920)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(10253597707662914)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(10225623550662799)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10255405409662927)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(10253597707662914)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(10254607601662920)||'.'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(10225623550662799)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10257179681662936)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10256709150662935)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10257904906662936)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10257559472662936)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
