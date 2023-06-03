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
--     PAGE: 12
--   Manifest End
--   Version:         23.1.0
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00012
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>12);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Alcaldes'
,p_alias=>'ALCALDES'
,p_page_mode=>'MODAL'
,p_step_title=>'Alcaldes'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function addVotar(id){',
'    apex.item(''P4_PRESIDENTE'').setValue(id);',
'    $.event.trigger(''addVotar'');',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img{',
'    width: 100px;',
'    height: 100px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'800'
,p_dialog_width=>'1200'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'AG4024208@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230601205139'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(41863629578346752068)
,p_name=>'Partidos'
,p_region_name=>'listaPartidos'
,p_template=>wwv_flow_imp.id(15102434514851016785)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--3cols:t-Cards--animColorFill'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    ID,',
'   NOMBRE as CARD_TEXT,',
'   DESCREIPCION, ',
'   ''<button class="t-Button t-Button--success t-Button--simple lto20268691256028810120_0" type="button" onclick="addInfo(''||ID||'')">Agregar</button>''as CARD_SUBTEXT,',
'   FOTO,',
'   MINI_TYPE,',
'   FILE_NAME,',
'   FILE_CHARSET,',
'   dbms_lob.getlength(FOTO) as CARD_TITLE',
'  from TBL_PARTIDO'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(15102458712324016795)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21594941794618941969)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21594940950294941968)
,p_query_column_id=>2
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>90
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21594940588784941968)
,p_query_column_id=>3
,p_column_alias=>'DESCREIPCION'
,p_column_display_sequence=>110
,p_column_heading=>'Descreipcion'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21594941397276941969)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>100
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21594942190929941969)
,p_query_column_id=>5
,p_column_alias=>'FOTO'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21594942589613941969)
,p_query_column_id=>6
,p_column_alias=>'MINI_TYPE'
,p_column_display_sequence=>50
,p_column_heading=>'Mini Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21594942966406941969)
,p_query_column_id=>7
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>60
,p_column_heading=>'File Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21594943321241941970)
,p_query_column_id=>8
,p_column_alias=>'FILE_CHARSET'
,p_column_display_sequence=>70
,p_column_heading=>'File Charset'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21594940134974941967)
,p_query_column_id=>9
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>120
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:TBL_PARTIDO:FOTO:ID::MINI_TYPE:FILE_NAME:::::'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(63446526692845284206)
,p_name=>'Listado_Personas'
,p_region_name=>'listaPartidos'
,p_template=>wwv_flow_imp.id(15102434514851016785)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--3cols:t-Cards--animColorFill'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    ID,',
'   NOMBRE,',
'   APELLIDO,',
'   FECHA_NACIMIENTO,',
'   IDENTIFICADOR,',
'   EMAIL,',
'   FOTO,',
'   MINI_TYPE,',
'   FILE_NAME,',
'   FILE_CHARSET,',
'   DETALLE_UBICAICON,',
'   ID_UBICACION,',
'   ID_CENTRO_VOTACION,',
'   ID_ROLES,',
'   dbms_lob.getlength(FOTO) as CARD_TITLE,',
'   (SELECT NOMBRE_ROO FROM TBL_ROLES A WHERE A.ID =  ID_ROLES) || '' - '' || NOMBRE || '' '' || APELLIDO as CARD_TEXT,',
'   --(SELECT NOMBRE FROM TBL_PARTIDO C WHERE C.ID = ID_PARTIDO ) as CARD_SUBTEXT',
'   ''<button class="t-Button t-Button--success t-Button--simple lto20268691256028810120_0" type="button" onclick="addVotar(''||ID||'')">Votar</button>''as CARD_SUBTEXT',
'  from TBL_PERSONA ',
'  WHERE ID_ROLES = 3;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(15102458712324016795)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21592095230741326409)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21592095636407326409)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>20
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21592096057512326409)
,p_query_column_id=>3
,p_column_alias=>'APELLIDO'
,p_column_display_sequence=>30
,p_column_heading=>'Apellido'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21592096408329326410)
,p_query_column_id=>4
,p_column_alias=>'FECHA_NACIMIENTO'
,p_column_display_sequence=>40
,p_column_heading=>'Fecha Nacimiento'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21592096871926326410)
,p_query_column_id=>5
,p_column_alias=>'IDENTIFICADOR'
,p_column_display_sequence=>50
,p_column_heading=>'Identificador'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21592097290385326410)
,p_query_column_id=>6
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>60
,p_column_heading=>'Email'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21592097647726326410)
,p_query_column_id=>7
,p_column_alias=>'FOTO'
,p_column_display_sequence=>70
,p_column_heading=>'Foto'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21592098053185326411)
,p_query_column_id=>8
,p_column_alias=>'MINI_TYPE'
,p_column_display_sequence=>80
,p_column_heading=>'Mini Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21592098488512326411)
,p_query_column_id=>9
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>90
,p_column_heading=>'File Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21592098810214326411)
,p_query_column_id=>10
,p_column_alias=>'FILE_CHARSET'
,p_column_display_sequence=>100
,p_column_heading=>'File Charset'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21592099218284326411)
,p_query_column_id=>11
,p_column_alias=>'DETALLE_UBICAICON'
,p_column_display_sequence=>110
,p_column_heading=>'Detalle Ubicaicon'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21592099660675326411)
,p_query_column_id=>12
,p_column_alias=>'ID_UBICACION'
,p_column_display_sequence=>120
,p_column_heading=>'Id Ubicacion'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21592100074932326412)
,p_query_column_id=>13
,p_column_alias=>'ID_CENTRO_VOTACION'
,p_column_display_sequence=>130
,p_column_heading=>'Id Centro Votacion'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21592100467315326412)
,p_query_column_id=>14
,p_column_alias=>'ID_ROLES'
,p_column_display_sequence=>140
,p_column_heading=>'Id Roles'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21592100821170326412)
,p_query_column_id=>15
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>170
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:TBL_PERSONA:FOTO:ID::MINI_TYPE:FILE_NAME:::::'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21592101215614326412)
,p_query_column_id=>16
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>180
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21592101647761326413)
,p_query_column_id=>17
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>190
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21594943711296941972)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41863629578346752068)
,p_button_name=>'Agregar_Partido'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(15102507753648016817)
,p_button_image_alt=>'Agregar Partido'
,p_button_position=>'ABOVE_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:P10_ID:&P10_ID.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(21592104162827326422)
,p_branch_name=>'goToAlcalde'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'goToAlcalde'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20292799669939810319)
,p_name=>'P12_URL_TEMP'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41884901092169136730)
,p_name=>'P12_PRESIDENTE'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21592102673889326420)
,p_name=>'addVotar'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'addVotar'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21592103104349326421)
,p_event_id=>wwv_flow_imp.id(21592102673889326420)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'add votante'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO TBL_VOTACIONES (',
'    ID_ROLES,',
'    ID_PERSONA,',
'    FECHA_REGISTRO',
') VALUES(',
'    3,',
'    :P12_PRESIDENTE,',
'    SYSDATE',
');'))
,p_attribute_02=>'P12_PRESIDENTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20292799729027810320)
,p_event_id=>wwv_flow_imp.id(21592102673889326420)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_util.prepare_url (',
'    p_url => ''f?p=&APP_ID.:18:&APP_SESSION.::NO:18:'',',
'    p_triggering_element => ''apex.jQuery(''''#listaPartidos'''')'' ) url ',
'into :P12_URL_TEMP',
'FROM DUAL;'))
,p_attribute_03=>'P12_URL_TEMP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20292799870407810321)
,p_event_id=>wwv_flow_imp.id(21592102673889326420)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'eval(apex.item("P12_URL_TEMP").getValue());'
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
