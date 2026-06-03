prompt --application/shared_components/navigation/lists/fazer_a_compra
begin
--   Manifest
--     LIST: Fazer a Compra
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.16'
,p_default_workspace_id=>32596757659887326
,p_default_application_id=>191
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AMBIENTEESTAGIARIOS'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(129034353054329086)
,p_name=>'Fazer a Compra'
,p_list_status=>'PUBLIC'
,p_version_scn=>44272637766650
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(129035717905329091)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Step 1 - cliente'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(129040066017329098)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Step 2 -  produtos'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(129045017533329102)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Step 3 - venda'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
