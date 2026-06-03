prompt --application/shared_components/security/authorizations/gestor_de_pedidos
begin
--   Manifest
--     SECURITY SCHEME: Gestor de Pedidos 
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
 p_id=>wwv_flow_imp.id(136917369405182615)
,p_name=>'Gestor de Pedidos '
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROLE ',
'FROM "BIANCA_APP_USERS" ',
'WHERE UPPER(USERNAME) = V(''APP_USER'') AND ROLE IN (''GESTOR DE PRODUTOS'')'))
,p_error_message=>unistr('Esta p\00E1gina s\00F3 pode ser acessada pelo Gestor de Pedidos')
,p_version_scn=>44338952944878
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/
