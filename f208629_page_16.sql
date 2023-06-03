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
--   Date and Time:   05:11 Saturday June 3, 2023
--   Exported By:     AG4024208@GMAIL.COM
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 16
--   Manifest End
--   Version:         23.1.0
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00016
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>16);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Personas'
,p_alias=>'PERSONAS'
,p_step_title=>'Personas'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img{',
'    width: 100px;',
'    height: 100px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AG4024208@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230601205029'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16692582674203777214)
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
 p_id=>wwv_flow_imp.id(16692583247869777215)
,p_plug_name=>'Personas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(15102424760188016782)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'select "ID","NOMBRE","APELLIDO","FECHA_NACIMIENTO","IDENTIFICADOR","EMAIL",sys.dbms_lob.getlength("FOTO")"FOTO","MINI_TYPE","FILE_NAME","FILE_CHARSET","DETALLE_UBICAICON","ID_UBICACION","ID_CENTRO_VOTACION","ID_ROLES","ID_PARTIDO","VOTANTE"from "TBL_'
||'PERSONA"'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
,p_prn_page_header=>'Personas'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(16692583382337777215)
,p_name=>'Personas'
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
,p_owner=>'AG4024208@GMAIL.COM'
,p_internal_uid=>16692583382337777215
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16692587414198777306)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16692587817304777307)
,p_db_column_name=>'NOMBRE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16692588272194777307)
,p_db_column_name=>'APELLIDO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Apellido'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16692588679231777307)
,p_db_column_name=>'FECHA_NACIMIENTO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Fecha Nacimiento'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16692589025108777308)
,p_db_column_name=>'IDENTIFICADOR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Identificador'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16692589491326777308)
,p_db_column_name=>'EMAIL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16692589851626777308)
,p_db_column_name=>'FOTO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Foto'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DOWNLOAD:TBL_PERSONA:FOTO:ID::::::attachment::'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16692590278790777309)
,p_db_column_name=>'MINI_TYPE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Mini Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16692590607942777309)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16692591073753777309)
,p_db_column_name=>'FILE_CHARSET'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'File Charset'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16692591493473777310)
,p_db_column_name=>'DETALLE_UBICAICON'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Detalle Ubicaicon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16692591896959777310)
,p_db_column_name=>'ID_UBICACION'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Id Ubicacion'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(16692586068041777305)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16692592266945777310)
,p_db_column_name=>'ID_CENTRO_VOTACION'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Id Centro Votacion'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(16692586288648777305)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16692592602108777311)
,p_db_column_name=>'ID_ROLES'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Id Roles'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(16692586504882777306)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16692593046127777311)
,p_db_column_name=>'ID_PARTIDO'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Id Partido'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(16692586859754777306)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16692593408570777311)
,p_db_column_name=>'VOTANTE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Votante'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(16692772559688290903)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'166927726'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:NOMBRE:APELLIDO:FECHA_NACIMIENTO:IDENTIFICADOR:EMAIL:FOTO:MINI_TYPE:FILE_NAME:FILE_CHARSET:DETALLE_UBICAICON:ID_UBICACION:ID_CENTRO_VOTACION:ID_ROLES:ID_PARTIDO:VOTANTE'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(20268693075121810138)
,p_name=>'Listado_Personas'
,p_template=>wwv_flow_imp.id(15102434514851016785)
,p_display_sequence=>20
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
'   ID_PARTIDO,',
'   VOTANTE,',
'   dbms_lob.getlength(FOTO) as CARD_TITLE,',
'   NOMBRE || ''-'' || APELLIDO as CARD_TEXT,',
'   (SELECT NOMBRE_ROO FROM TBL_ROLES A WHERE A.ID =  ID_ROLES) ||  '' -DPI '' || IDENTIFICADOR as CARD_SUBTEXT',
'  from TBL_PERSONA'))
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
 p_id=>wwv_flow_imp.id(20268693174919810139)
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
 p_id=>wwv_flow_imp.id(20268693255678810140)
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
 p_id=>wwv_flow_imp.id(20268693345986810141)
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
 p_id=>wwv_flow_imp.id(20268693482410810142)
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
 p_id=>wwv_flow_imp.id(20268693501577810143)
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
 p_id=>wwv_flow_imp.id(20268693604501810144)
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
 p_id=>wwv_flow_imp.id(20268693771301810145)
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
 p_id=>wwv_flow_imp.id(20268693881266810146)
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
 p_id=>wwv_flow_imp.id(20268693957761810147)
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
 p_id=>wwv_flow_imp.id(20268694045335810148)
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
 p_id=>wwv_flow_imp.id(20268694181483810149)
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
 p_id=>wwv_flow_imp.id(20268694209004810150)
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
 p_id=>wwv_flow_imp.id(20292797847796810301)
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
 p_id=>wwv_flow_imp.id(20292797905647810302)
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
 p_id=>wwv_flow_imp.id(20292798006952810303)
,p_query_column_id=>15
,p_column_alias=>'ID_PARTIDO'
,p_column_display_sequence=>150
,p_column_heading=>'Id Partido'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20292798199238810304)
,p_query_column_id=>16
,p_column_alias=>'VOTANTE'
,p_column_display_sequence=>160
,p_column_heading=>'Votante'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20292798223451810305)
,p_query_column_id=>17
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
 p_id=>wwv_flow_imp.id(20292798391338810306)
,p_query_column_id=>18
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
 p_id=>wwv_flow_imp.id(20292798448430810307)
,p_query_column_id=>19
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>190
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
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
