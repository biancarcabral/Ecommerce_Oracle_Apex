prompt --application/shared_components/security/app_access_control/gestor_de_pedidos
begin
--   Manifest
--     ACL ROLE: Gestor de Pedidos
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
 p_id=>wwv_flow_imp.id(136915501548131826)
,p_static_id=>'GESTOR_DE_PEDIDOS'
,p_name=>'Gestor de Pedidos'
,p_description=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Respons\00E1vel pelo gerenciamento dos pedidos'),
'para entrega'))
,p_version_scn=>44314857377280
);
wwv_flow_imp.component_end;
end;
/
