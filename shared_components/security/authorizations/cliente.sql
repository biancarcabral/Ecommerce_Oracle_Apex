prompt --application/shared_components/security/authorizations/cliente
begin
--   Manifest
--     SECURITY SCHEME: Cliente
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
 p_id=>wwv_flow_imp.id(136916738356167770)
,p_name=>'Cliente'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROLE ',
'FROM "BIANCA_APP_USERS" ',
'WHERE UPPER(USERNAME) = V(''APP_USER'') AND ROLE IN (''CLIENTE'')'))
,p_error_message=>unistr('TEsta p\00E1gina s\00F3 pode ser acessada por clientes')
,p_version_scn=>44338948458127
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/
