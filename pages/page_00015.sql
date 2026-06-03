prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_name=>'Checkout'
,p_alias=>'CHECKOUT'
,p_step_title=>'Checkout'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(136916738356167770)
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127694643486045832)
,p_plug_name=>'Checkout'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(121512275556959097)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IP.ITEM_PEDIDO_ID,',
'       IP.PEDIDO_ID,',
'       IP.PRODUTO_ID,',
'       (SELECT NOME FROM BIANCA_PRODUTOS WHERE IP.PRODUTO_ID=BIANCA_PRODUTOS.PRODUTO_ID) "Nome",',
'       IP.QUANTIDADE,',
'       IP.PRECO_UNITARIO,',
'       IP.STATUS_ITEM_PEDIDO,',
'       IP.CREATE_AT,',
'       IP.CREATE_BY,',
'       IP.UPDATE_AT,',
'       IP.UPDATE_BY,',
'       IP.QUANTIDADE*IP.PRECO_UNITARIO "Total"',
'       from BIANCA_ITENS_PEDIDOS IP',
'       WHERE IP.STATUS_ITEM_PEDIDO=''Ativo'' AND IP.CREATE_BY=v(''app_user'')'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(129882233986213541)
,p_name=>'QUANTIDADE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTIDADE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Quantidade'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>255
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(129882389813213542)
,p_name=>'PRECO_UNITARIO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRECO_UNITARIO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Preco Unitario'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(129882801984213547)
,p_name=>'ITEM_PEDIDO_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_PEDIDO_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(129882994386213548)
,p_name=>'PEDIDO_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PEDIDO_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(129883055667213549)
,p_name=>'PRODUTO_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUTO_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(129883144384213550)
,p_name=>'Nome'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Nome'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Nome'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(130665877935832344)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_required_patch=>wwv_flow_imp.id(121418112881959016)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(130665971407832345)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_required_patch=>wwv_flow_imp.id(121418112881959016)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(131378855539200401)
,p_name=>'STATUS_ITEM_PEDIDO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ITEM_PEDIDO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(131378949070200402)
,p_name=>'CREATE_AT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATE_AT'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(131379029298200403)
,p_name=>'CREATE_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATE_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(131379107400200404)
,p_name=>'UPDATE_AT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_AT'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(131379233848200405)
,p_name=>'UPDATE_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(131379338037200406)
,p_name=>'Total'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Total'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Total'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(129882081529213539)
,p_internal_uid=>129882081529213539
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(131365222114150584)
,p_interactive_grid_id=>wwv_flow_imp.id(129882081529213539)
,p_static_id=>'1313653'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(131365405941150585)
,p_report_id=>wwv_flow_imp.id(131365222114150584)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(131366838119150608)
,p_view_id=>wwv_flow_imp.id(131365405941150585)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(129882233986213541)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(131367729550150612)
,p_view_id=>wwv_flow_imp.id(131365405941150585)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(129882389813213542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(131385292355214629)
,p_view_id=>wwv_flow_imp.id(131365405941150585)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(129882801984213547)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(131386164721214634)
,p_view_id=>wwv_flow_imp.id(131365405941150585)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(129882994386213548)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(131387009959214638)
,p_view_id=>wwv_flow_imp.id(131365405941150585)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(129883055667213549)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(131387972758214642)
,p_view_id=>wwv_flow_imp.id(131365405941150585)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(129883144384213550)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(131388844654214646)
,p_view_id=>wwv_flow_imp.id(131365405941150585)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(131378855539200401)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(131389737998214650)
,p_view_id=>wwv_flow_imp.id(131365405941150585)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(131378949070200402)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(131390695717214654)
,p_view_id=>wwv_flow_imp.id(131365405941150585)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(131379029298200403)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(131391545615214658)
,p_view_id=>wwv_flow_imp.id(131365405941150585)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(131379107400200404)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(131392484308214663)
,p_view_id=>wwv_flow_imp.id(131365405941150585)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(131379233848200405)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(131393370858214667)
,p_view_id=>wwv_flow_imp.id(131365405941150585)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(131379338037200406)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(131408847889295304)
,p_view_id=>wwv_flow_imp.id(131365405941150585)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(130665877935832344)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128996966285143809)
,p_plug_name=>'Cliente Form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(121455477595959063)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_query_type=>'TABLE'
,p_query_table=>'BIANCA_INFO_USUARIO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(129080840768797302)
,p_button_sequence=>50
,p_button_name=>'Finalizar_Compra'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(121595717363959171)
,p_button_image_alt=>'Finalizar Compra'
,p_confirm_message=>'PEDIDO REALIZADO COM SUCESSO!'
,p_confirm_style=>'success'
,p_icon_css_classes=>'fa-check-circle-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128997239652143809)
,p_name=>'P15_ID_COMPLEMENTO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128996966285143809)
,p_item_source_plug_id=>wwv_flow_imp.id(128996966285143809)
,p_source=>'ID_COMPLEMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128998063607143811)
,p_name=>'P15_END_RUA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(128996966285143809)
,p_item_source_plug_id=>wwv_flow_imp.id(128996966285143809)
,p_prompt=>unistr('RUA DO ENDERE\00C7O')
,p_source=>'END_RUA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(121593120940959165)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128998491632143811)
,p_name=>'P15_END_NUM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(128996966285143809)
,p_item_source_plug_id=>wwv_flow_imp.id(128996966285143809)
,p_prompt=>unistr('NUMERO DO ENDERE\00C7O')
,p_source=>'END_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(121593120940959165)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128998802784143811)
,p_name=>'P15_END_COMP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(128996966285143809)
,p_item_source_plug_id=>wwv_flow_imp.id(128996966285143809)
,p_source=>'END_COMP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128999208787143811)
,p_name=>'P15_END_BAIRRO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(128996966285143809)
,p_item_source_plug_id=>wwv_flow_imp.id(128996966285143809)
,p_prompt=>unistr('BAIRRO DO ENDERE\00C7O')
,p_source=>'END_BAIRRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(121593120940959165)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(128999666351143812)
,p_name=>'P15_END_CIDADE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(128996966285143809)
,p_item_source_plug_id=>wwv_flow_imp.id(128996966285143809)
,p_prompt=>unistr('CIDADE DO ENDERE\00C7O')
,p_source=>'END_CIDADE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(121593120940959165)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129000040810143812)
,p_name=>'P15_INF_CONTATO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(128996966285143809)
,p_item_source_plug_id=>wwv_flow_imp.id(128996966285143809)
,p_prompt=>'E-MAIL'
,p_source=>'INF_CONTATO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(121593120940959165)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129000423910143812)
,p_name=>'P15_INF_USUARIO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(128996966285143809)
,p_item_source_plug_id=>wwv_flow_imp.id(128996966285143809)
,p_prompt=>'NOME'
,p_source=>'INF_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(121594454485959167)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(129000888652143813)
,p_name=>'P15_CPF'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(128996966285143809)
,p_item_source_plug_id=>wwv_flow_imp.id(128996966285143809)
,p_prompt=>'CPF'
,p_source=>'CPF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(121594454485959167)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(133389457925168429)
,p_name=>'P15_METODO_PAGAMENTO'
,p_item_sequence=>20
,p_prompt=>'Metodo de Pagamento'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_METODO_PAGAMENTO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(121593120940959165)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(129007642375143820)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(128996966285143809)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Cliente Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(121418112881959016)
,p_internal_uid=>129007642375143820
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(129008064722143821)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_required_patch=>wwv_flow_imp.id(121418112881959016)
,p_internal_uid=>129008064722143821
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(130666093814832346)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(127694643486045832)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Checkout - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(121418112881959016)
,p_internal_uid=>130666093814832346
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(131488298100630121)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    CURSOR listvalue is select PRODUTO_ID, SUM(QUANTIDADE) Total from BIANCA_ITENS_PEDIDOS where STATUS_ITEM_PEDIDO=''Ativo'' GROUP BY PRODUTO_ID ORDER BY PRODUTO_ID ASC;',
'    var number;',
'    ped_id number;',
'    usr varchar(60) := v(''app_user'');',
'    dt date := sysdate - interval ''3'' hour;',
'    METODO_PAGAMENTO  VARCHAR2(255) := V(''P15_METODO_PAGAMENTO'');',
'',
'    INF_USUARIO VARCHAR2(255) := V(''P15_INF_USUARIO'');',
'    CPF NUMBER := V(''P15_CPF'');',
'    END_RUA VARCHAR2(255) := V(''P15_END_RUA'');',
'    END_NUM NUMBER := V(''P15_END_NUM'');',
'    END_BAIRRO VARCHAR2(255) := V(''P15_END_BAIRRO'');',
'    END_CIDADE VARCHAR2(255) := V(''P15_END_CIDADE'');',
'    INF_CONTATO VARCHAR(255) := V(''P15_INF_CONTATO'');',
'',
'    v_url varchar2(4000);',
'',
'begin',
'    insert into BIANCA_PEDIDOS(USUARIO_ID, DATA_PEDIDO, STATUS, METODO_PAGAMENTO)',
'    VALUES (usr, dt, ''Processamento'', METODO_PAGAMENTO);',
'    select PEDIDO_ID into ped_id from BIANCA_PEDIDOS where USUARIO_ID=usr and DATA_PEDIDO = dt and STATUS = ''Processamento'';',
'',
'    INSERT INTO BIANCA_INFO_USUARIO (INF_USUARIO, CPF, END_RUA, END_NUM, END_BAIRRO, END_CIDADE, INF_CONTATO)',
'    VALUES (INF_USUARIO, CPF, END_RUA,END_NUM, END_BAIRRO, END_CIDADE, INF_CONTATO);',
'',
'    for i in listvalue',
'    loop',
' ',
'        update BIANCA_ITENS_PEDIDOS',
'        set PEDIDO_ID = ped_id',
'        where PRODUTO_ID = i.PRODUTO_ID and STATUS_ITEM_PEDIDO = ''Ativo'';',
' ',
'        select ESTOQUE into var from BIANCA_PRODUTOS where PRODUTO_ID = i.PRODUTO_ID;',
' ',
'        if var >= i.Total then',
' ',
'            update BIANCA_ITENS_PEDIDOS',
'            set STATUS_ITEM_PEDIDO = ''Comprado''',
'            where PRODUTO_ID = i.PRODUTO_ID and STATUS_ITEM_PEDIDO = ''Ativo'';',
' ',
'            update BIANCA_PRODUTOS',
'            set ESTOQUE = ESTOQUE- i.Total',
'            where PRODUTO_ID = i.PRODUTO_ID;',
' ',
'        else',
' ',
'            update BIANCA_ITENS_PEDIDOS',
unistr('            set STATUS_ITEM_PEDIDO = ''Invi\00E1vel'''),
'            where PRODUTO_ID = i.PRODUTO_ID and STATUS_ITEM_PEDIDO = ''Ativo'';',
'        end if;',
'    end loop;',
'    ',
'    COMMIT;',
'    v_url := APEX_PAGE.GET_URL( ',
'        p_page => 4,',
'        p_items => ''P4_PEDIDO_ID'',',
'        p_values => ped_id ); ',
'        ',
'        APEX_UTIL.REDIRECT_URL(v_url); ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(129080840768797302)
,p_internal_uid=>131488298100630121
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(129007210917143820)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(128996966285143809)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Cliente Form'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>129007210917143820
);
wwv_flow_imp.component_end;
end;
/
