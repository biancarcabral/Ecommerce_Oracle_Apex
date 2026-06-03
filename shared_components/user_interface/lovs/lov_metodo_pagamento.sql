prompt --application/shared_components/user_interface/lovs/lov_metodo_pagamento
begin
--   Manifest
--     LOV_METODO_PAGAMENTO
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
 p_id=>wwv_flow_imp.id(133754306599847481)
,p_lov_name=>'LOV_METODO_PAGAMENTO'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'BIANCA_METODO_PAGAMENTO'
,p_return_column_name=>'METODO_PAGAMENTO'
,p_display_column_name=>'METODO_PAGAMENTO'
,p_default_sort_column_name=>'METODO_PAGAMENTO'
,p_default_sort_direction=>'ASC'
,p_version_scn=>44291631668996
);
wwv_flow_imp.component_end;
end;
/
