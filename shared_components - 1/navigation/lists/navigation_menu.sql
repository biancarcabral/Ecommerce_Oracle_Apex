prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
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
 p_id=>wwv_flow_imp.id(121419211758959022)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>44338920842966
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(121721386003959540)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(121724173903959547)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Produtos'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-coffee'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(121732113895959561)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Categorias'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bookmark-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(126523583651229650)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Administra\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_imp.id(136916927406174861)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(126532985178244908)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('Relat\00F3rio de Produtos')
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_security_scheme=>wwv_flow_imp.id(136916927406174861)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(126943472769636276)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>unistr('Relat\00F3rio de Pedidos')
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-shopping-bag'
,p_security_scheme=>wwv_flow_imp.id(136917369405182615)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'23'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(126975458717221630)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>unistr('Relat\00F3rio de Estoque')
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-briefcase'
,p_security_scheme=>wwv_flow_imp.id(136917583328186076)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(129920618668386454)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>unistr('Reat\00F3rio de Vendas e Financeiro')
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cart-edit'
,p_security_scheme=>wwv_flow_imp.id(136916927406174861)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(136975564402183001)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Gerencia Estoque'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_security_scheme=>wwv_flow_imp.id(136917583328186076)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(137002241679425619)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Gerencia Pedidos'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_security_scheme=>wwv_flow_imp.id(136917369405182615)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(137886315213566648)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Controls'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-apex'
,p_security_scheme=>wwv_flow_imp.id(136916927406174861)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
