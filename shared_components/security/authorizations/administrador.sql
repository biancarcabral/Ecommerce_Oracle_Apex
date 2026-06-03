prompt --application/shared_components/security/authorizations/administrador
begin
--   Manifest
--     SECURITY SCHEME: Administrador
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.16'
,p_default_workspace_id=>32596757659887326
,p_default_application_id=>191
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AMBIENTEESTAGIARIOS'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(136916927406174861)
,p_name=>'Administrador'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROLE ',
'FROM "BIANCA_APP_USERS" ',
'WHERE UPPER(USERNAME) = V(''APP_USER'') AND ROLE IN (''ADMINISTRADOR'')'))
,p_error_message=>unistr('Esta p\00E1gina s\00F3 pode ser acessada por Administradores')
,p_version_scn=>44338941192585
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/
