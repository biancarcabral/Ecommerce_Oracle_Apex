prompt --application/shared_components/logic/application_processes/initialize_shopping_cart_header
begin
--   Manifest
--     APPLICATION PROCESS: Initialize Shopping Cart Header
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.16'
,p_default_workspace_id=>32596757659887326
,p_default_application_id=>191
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AMBIENTEESTAGIARIOS'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(125818512574870649)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize Shopping Cart Header'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Initialize shopping cart navigation bar to show appropriate icon and count',
'DECLARE',
'    l_cnt NUMBER := manage_orders.get_quantity;',
'BEGIN',
'    IF l_cnt > 0 THEN',
'        :SHOPPING_CART_ITEMS := l_cnt;',
'        :SHOPPING_CART_ICON := ''fa-cart-full'';',
'    ELSE',
'        :SHOPPING_CART_ITEMS := '''';',
'        :SHOPPING_CART_ICON := ''fa-cart-empty'';',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_version_scn=>44260010339651
);
wwv_flow_imp.component_end;
end;
/
