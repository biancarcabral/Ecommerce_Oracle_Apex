prompt --application/shared_components/logic/application_settings
begin
--   Manifest
--     APPLICATION SETTINGS: 191
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.16'
,p_default_workspace_id=>32596757659887326
,p_default_application_id=>191
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AMBIENTEESTAGIARIOS'
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(137742476735530134)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(137742199525530115)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>44319101432994
);
wwv_flow_imp.component_end;
end;
/
