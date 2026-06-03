prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Coffee Shop - Bianca'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121722074895959544)
,p_plug_name=>'Home'
,p_title=>'PROMOCAO'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleA'
,p_plug_template=>wwv_flow_imp.id(121482486292959079)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NOME,',
'       DESCRICAO,',
'       ESTOQUE,',
'       PROMOCAO,',
'       PRODUTO_ID,',
'       IMAGEM_URL',
'  from BIANCA_PRODUTOS',
'  where PROMOCAO != 0'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>unistr('PROMO\00C7\00D5ES')
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(121722540536959544)
,p_region_id=>wwv_flow_imp.id(121722074895959544)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'DESCRICAO'
,p_body_adv_formatting=>false
,p_body_column_name=>'PROMOCAO'
,p_second_body_adv_formatting=>false
,p_badge_column_name=>'ESTOQUE'
,p_badge_label=>'&ESTOQUE.'
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'IMAGEM_URL'
,p_media_display_position=>'FIRST'
,p_media_appearance=>'WIDESCREEN'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'PRODUTO_ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(125163584225737619)
,p_card_id=>wwv_flow_imp.id(121722540536959544)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'Detalhes do Produto'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::P9_NOME,P9_DESCRICAO,P9_IMAGEM,P9_PRECO_UNITARIO,P9_PRODUTO_ID:&NOME.,&DESCRICAO.,&IMAGEM_URL.,&PROMOCAO.,&PRODUTO_ID.'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(121723555605959546)
,p_plug_name=>'Coffee Shop - Bianca'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(121498782209959089)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(125162324574737607)
,p_plug_name=>'Header image'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(121522020557959102)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_source=>'<img src="#APP_IMAGES#coffeeshopheader.jpg" alt="Header Image" style="width:1300px; height:350px;">'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92190960712753950)
,p_name=>'P1_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(121722074895959544)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'NOME'
,p_prompt=>'Order By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Nome;NOME,Descricao;DESCRICAO,Promocao;PROMOCAO'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(121593120940959165)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp.component_end;
end;
/
