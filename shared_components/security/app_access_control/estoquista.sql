prompt --application/shared_components/security/app_access_control/estoquista
begin
--   Manifest
--     ACL ROLE: Estoquista
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
 p_id=>wwv_flow_imp.id(136915655298133166)
,p_static_id=>'ESTOQUISTA'
,p_name=>'Estoquista'
,p_description=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Respons\00E1vel pelo gerenciamento do estoque e'),
unistr('pedidos de reposi\00E7\00E3o')))
,p_version_scn=>44314857500910
);
wwv_flow_imp.component_end;
end;
/
