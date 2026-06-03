prompt --application/shared_components/user_interface/lovs/bianca_categorias_nome
begin
--   Manifest
--     BIANCA_CATEGORIAS.NOME
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
 p_id=>wwv_flow_imp.id(125284551700443597)
,p_lov_name=>'BIANCA_CATEGORIAS.NOME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'BIANCA_CATEGORIAS'
,p_return_column_name=>'CATEGORIA_ID'
,p_display_column_name=>'NOME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NOME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44273433498290
);
wwv_flow_imp.component_end;
end;
/
