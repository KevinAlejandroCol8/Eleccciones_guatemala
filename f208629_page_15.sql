prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.0'
,p_default_workspace_id=>15101106571091511773
,p_default_application_id=>208629
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PROYECTOELECCIONES'
);
end;
/
 
prompt APPLICATION 208629 - Elecciones _Guatemala
--
-- Application Export:
--   Application:     208629
--   Name:            Elecciones _Guatemala
--   Date and Time:   05:10 Saturday June 3, 2023
--   Exported By:     AG4024208@GMAIL.COM
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 15
--   Manifest End
--   Version:         23.1.0
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00015
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>15);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Partidos_Politicos'
,p_alias=>'PARTIDOS-POLITICOS1'
,p_step_title=>'Partidos_Politicos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'AG4024208@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230521210522'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16692682275007279800)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(15102446912514016790)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(15101931252292016739)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(15102509383470016817)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16692682831206279801)
,p_plug_name=>'Partidos_Politicos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(15101975044409016760)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TBL_PARTIDO'
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P15_ORDER_BY", "orderBys": [{"key":"NOMBRE","expr":"\"NOMBRE\" asc"},{"key":"DESCREIPCION","expr":"\"DESCREIPCION\" asc"}]}'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(16692683328957279801)
,p_region_id=>wwv_flow_imp.id(16692682831206279801)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'DESCREIPCION'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16692683858821279802)
,p_name=>'P15_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16692682831206279801)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'NOMBRE'
,p_prompt=>'Order By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Nombre;NOMBRE,Descreipcion;DESCREIPCION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(15102505248611016816)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
