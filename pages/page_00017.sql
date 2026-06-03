prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_name=>'Gerencia Pedidos'
,p_alias=>'GERENCIA-PEDIDOS1'
,p_step_title=>'Gerencia Pedidos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137002613693425619)
,p_plug_name=>'Gerencia Pedidos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(121512275556959097)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'BIANCA_PEDIDOS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_required_role=>wwv_flow_imp.id(136917369405182615)
,p_prn_page_header=>'Gerencia Pedidos'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(137002731187425619)
,p_name=>'Gerencia Pedidos'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'BIANCARC'
,p_internal_uid=>137002731187425619
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137003370888425705)
,p_db_column_name=>'PEDIDO_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Pedido ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137003786888425706)
,p_db_column_name=>'USUARIO_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Usuario ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137004148371425706)
,p_db_column_name=>'DATA_PEDIDO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Data Pedido'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137004537372425706)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137004943716425707)
,p_db_column_name=>'CREATE_AT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Create At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137005327651425707)
,p_db_column_name=>'CREATE_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Create By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137005766004425707)
,p_db_column_name=>'UPDATE_AT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Update At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137006170158425708)
,p_db_column_name=>'UPDATE_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Update By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137006525367425708)
,p_db_column_name=>'ID_COMPLEMENTO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Id Complemento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137006951556425708)
,p_db_column_name=>'METODO_PAGAMENTO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Metodo Pagamento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(137007732026435252)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1370078'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PEDIDO_ID:USUARIO_ID:DATA_PEDIDO:STATUS:CREATE_AT:CREATE_BY:UPDATE_AT:UPDATE_BY:ID_COMPLEMENTO:METODO_PAGAMENTO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136990824023280640)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(137002613693425619)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(121595676133959170)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp.component_end;
end;
/
