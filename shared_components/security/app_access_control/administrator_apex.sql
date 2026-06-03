prompt --application/shared_components/security/app_access_control/administrator_apex
begin
--   Manifest
--     ACL ROLE: Administrator apex
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.16'
,p_default_workspace_id=>32596757659887326
,p_default_application_id=>191
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AMBIENTEESTAGIARIOS'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(137742686484530137)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator apex'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>44338062665466
);
wwv_flow_imp.component_end;
end;
/
