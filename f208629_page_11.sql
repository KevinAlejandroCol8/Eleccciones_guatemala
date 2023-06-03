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
--     PAGE: 11
--   Manifest End
--   Version:         23.1.0
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00011
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>11);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Municipio'
,p_alias=>'MUNICIPIO'
,p_step_title=>'Municipio'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_last_updated_by=>'AG4024208@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230528230806'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16659728218177201458)
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
 p_id=>wwv_flow_imp.id(16659728850312201459)
,p_plug_name=>'Municipio'
,p_region_name=>'listaItems'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(15102424760188016782)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'TBL_MUNICIPIO'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Municipio'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16654075953619104511)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16654076074477104512)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16659730146870201461)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16659731117452201462)
,p_name=>'NOMBRE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOMBRE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Nombre'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16659732192400201462)
,p_name=>'DESCRIPCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPCION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Descripcion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16659733113563201463)
,p_name=>'ID_DEPARTAMENTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_DEPARTAMENTO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Departamento'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(16659734067086201463)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(16659729399008201459)
,p_internal_uid=>16659729399008201459
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
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    let $ = apex.jQuery,',
'        toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(),',
'        toolbarGroup = toolbarData.toolbarFind("actions3");',
'        ',
'        addrowAction = toolbarData.toolbarFind("selection-add-row"),',
'        saveAction = toolbarData.toolbarFind("save"),',
'        //editAction = toolbarData.toolbarFind("edit");    ',
'       // $(''[data-action="edit"]'').hide(); ',
'',
'',
'        addrowAction.label = "Agregar"; // lebel Name',
'        addrowAction.icon = "icon-ig-add-row"; // icon added',
'        addrowAction.iconBeforeLabel = true;',
'        addrowAction.hot = false;',
'        addrowAction.id = ''agregarRowPermisos'';',
'        //$(''[data-action="edit"]'').hide();',
'',
'        saveAction.label = "Guardar";',
'        saveAction.iconBeforeLabel = true;',
'        saveAction.icon = "icon-ig-save";',
'        saveAction.id = "get"; // button id',
'        saveAction.hot = false;',
'         //  $(''[data-action="guardar"]'').hide();  ',
'',
'        //editAction.label = "Edit";',
'        //editAction.iconBeforeLabel = true;',
'        ////editAction.icon ="icon-ig-edit-as";',
'        //editAction.id = "edit";',
'        //editAction.hot = false;',
'',
'        toolbarGroup.controls.push({',
'            type: "BUTTON",',
'            action: ''selection-delete'',',
'            icon: "fa fa-trash",      // alternative FontAwesome icon: "fa fa-trash",',
'            id: ''botonTrash'',',
'            //iconBeforeLabel: true,',
'            label: " ",',
'            iconBeforeLabel: true,',
'            hot: false,',
'        });    ',
'',
'        config.toolbarData = toolbarData;',
'        return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(16659729702133201459)
,p_interactive_grid_id=>wwv_flow_imp.id(16659729399008201459)
,p_static_id=>'166597298'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(16659729926732201459)
,p_report_id=>wwv_flow_imp.id(16659729702133201459)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16659730550130201461)
,p_view_id=>wwv_flow_imp.id(16659729926732201459)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(16659730146870201461)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16659731570189201462)
,p_view_id=>wwv_flow_imp.id(16659729926732201459)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(16659731117452201462)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16659732594910201463)
,p_view_id=>wwv_flow_imp.id(16659729926732201459)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(16659732192400201462)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16659733549817201463)
,p_view_id=>wwv_flow_imp.id(16659729926732201459)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(16659733113563201463)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16659753579726205316)
,p_view_id=>wwv_flow_imp.id(16659729926732201459)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(16654075953619104511)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20268692588709810133)
,p_name=>'Botones'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(16659728850312201459)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20268692634005810134)
,p_event_id=>wwv_flow_imp.id(20268692588709810133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let trashButton= $(''#listaItems_ig_toolbar > .a-Toolbar-groupContainer--start'').children().eq(5).children().eq(1).detach();',
'$(''#listaItems_ig_toolbar > .a-Toolbar-groupContainer--end'').children().eq(0).append(trashButton);',
'',
'let saveButton = $(''#listaItems_ig_toolbar > .a-Toolbar-groupContainer--start'').children().eq(4).children().eq(1).detach();',
'$(''#listaItems_ig_toolbar > .a-Toolbar-groupContainer--end'').children().eq(0).append(saveButton);',
'',
'let addButton= $(''#listaItems_ig_toolbar > .a-Toolbar-groupContainer--start'').children().eq(5).children().eq(0).detach();',
'$(''#listaItems_ig_toolbar > .a-Toolbar-groupContainer--end'').children().eq(0).append(addButton);',
'',
'',
'$(''[data-action="edit"]'').remove()'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16654076117933104513)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(16659728850312201459)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Municipio - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>16654076117933104513
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
