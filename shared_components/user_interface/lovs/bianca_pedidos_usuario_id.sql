prompt --application/shared_components/user_interface/lovs/bianca_pedidos_usuario_id
begin
--   Manifest
--     BIANCA_PEDIDOS.USUARIO_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.16'
,p_default_workspace_id=>32596757659887326
,p_default_application_id=>191
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AMBIENTEESTAGIARIOS'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(131518761194747000)
,p_lov_name=>'BIANCA_PEDIDOS.USUARIO_ID'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'BIANCA_PEDIDOS'
,p_return_column_name=>'PEDIDO_ID'
,p_display_column_name=>'USUARIO_ID'
,p_default_sort_column_name=>'USUARIO_ID'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44280215645029
);
wwv_flow_imp.component_end;
end;
/
