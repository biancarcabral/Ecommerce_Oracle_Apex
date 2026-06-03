prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.16'
,p_default_workspace_id=>32596757659887326
,p_default_application_id=>191
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AMBIENTEESTAGIARIOS'
);
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Meus Pedidos'
,p_alias=>unistr('INFORMA\00C7\00D5ES-DO-PEDIDO')
,p_step_title=>unistr('Informa\00E7\00F5es do Pedido')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(136916738356167770)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(125165508242737639)
,p_plug_name=>'Obrigada pelo seu pedido!'
,p_title=>'Obrigada pelo seu pedido!'
,p_icon_css_classes=>'fa-heart'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--showIcon:t-ContentBlock--h1'
,p_plug_template=>wwv_flow_imp.id(121484331588959080)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(136925713797501502)
,p_plug_name=>'PEDIDO_CLIENTE'
,p_title=>'Pedido Cliente'
,p_parent_plug_id=>wwv_flow_imp.id(125165508242737639)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(121512275556959097)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'     p.PEDIDO_ID,',
'     p.DATA_PEDIDO,',
'     pr.NOME,',
'     i.PRECO_UNITARIO,',
'     i.QUANTIDADE',
'from BIANCA_PEDIDOS p',
'join BIANCA_ITENS_PEDIDOS i on p.PEDIDO_ID = i.PEDIDO_ID',
'join BIANCA_PRODUTOS pr on i.PRODUTO_ID = pr.PRODUTO_ID',
'where p.USUARIO_ID=:APP_USER',
'ORDER BY p.DATA_PEDIDO DESC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Pedido Cliente'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(136928180407501526)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'BIANCARC'
,p_internal_uid=>136928180407501526
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136928258584501527)
,p_db_column_name=>'PEDIDO_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Pedido Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136928362320501528)
,p_db_column_name=>'DATA_PEDIDO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Data Pedido'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136928459710501529)
,p_db_column_name=>'NOME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nome'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136928511436501530)
,p_db_column_name=>'PRECO_UNITARIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Preco Unitario'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136928638714501531)
,p_db_column_name=>'QUANTIDADE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Quantidade'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(136972155164068063)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1369722'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PEDIDO_ID:DATA_PEDIDO:NOME:PRECO_UNITARIO:QUANTIDADE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125165655468737640)
,p_name=>'P16_ORDER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(125165508242737639)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133391579632168450)
,p_name=>'P4_PEDIDO_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(125165508242737639)
,p_prompt=>'Pedido ID'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(121593120940959165)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
