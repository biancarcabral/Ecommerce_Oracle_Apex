prompt --application/shared_components/security/app_access_control/administrador
begin
--   Manifest
--     ACL ROLE: Administrador
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
 p_id=>wwv_flow_imp.id(136915459643129780)
,p_static_id=>'ADMINISTRADOR'
,p_name=>'Administrador'
,p_description=>unistr('Usu\00E1rio com direitos administrativos')
,p_version_scn=>44314851557975
);
wwv_flow_imp.component_end;
end;
/
