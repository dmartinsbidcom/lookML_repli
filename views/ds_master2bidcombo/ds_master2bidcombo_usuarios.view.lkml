# The name of this view in Looker is "Ds Master2bidcombo Usuarios"
view: ds_master2bidcombo_usuarios {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2bidcombo.usuarios` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Celular Usuario" in Explore.

  dimension: celular_usuario {
    type: string
    sql: ${TABLE}.CelularUsuario ;;
  }

  dimension: clavexx {
    type: string
    sql: ${TABLE}.Clavexx ;;
  }

  dimension: datastream_metadata__source_timestamp {
    type: number
    sql: ${TABLE}.datastream_metadata.source_timestamp ;;
    group_label: "Datastream Metadata"
    group_item_label: "Source Timestamp"
  }

  dimension: datastream_metadata__uuid {
    type: string
    sql: ${TABLE}.datastream_metadata.uuid ;;
    group_label: "Datastream Metadata"
    group_item_label: "Uuid"
  }

  dimension: desde_fcarga_usuario {
    type: number
    sql: ${TABLE}.DesdeFCargaUsuario ;;
  }

  dimension: dias_desde_fcarga_usuario {
    type: number
    sql: ${TABLE}.DiasDesdeFCargaUsuario ;;
  }

  dimension: dias_hasta_fcarga_usuario {
    type: number
    sql: ${TABLE}.DiasHastaFCargaUsuario ;;
  }

  dimension: e_mail_usuario {
    type: string
    sql: ${TABLE}.eMailUsuario ;;
  }

  dimension: es_tecnico_usuario {
    type: number
    sql: ${TABLE}.EsTecnicoUsuario ;;
  }

  dimension: fechavtoclaveusuario {
    type: number
    sql: ${TABLE}.fechavtoclaveusuario ;;
  }

  dimension: hasta_fcarga_usuario {
    type: number
    sql: ${TABLE}.HastaFCargaUsuario ;;
  }

  dimension: id_bo_dep_ubicacion_gf {
    type: number
    sql: ${TABLE}.idBoDepUbicacionGF ;;
  }

  dimension: id_bo_dep_ubicacion_st {
    type: number
    sql: ${TABLE}.idBoDepUbicacionST ;;
  }

  dimension: id_celulares_vinculados_usuario {
    type: string
    sql: ${TABLE}.IdCelularesVinculadosUsuario ;;
  }

  dimension: id_cuenta_de_mail {
    type: number
    sql: ${TABLE}.idCuentaDeMail ;;
  }

  dimension: idusuario {
    type: number
    sql: ${TABLE}.IDUsuario ;;
  }

  dimension: imagen_firma_mail_usuario {
    type: string
    sql: ${TABLE}.ImagenFirmaMailUsuario ;;
  }

  dimension: mcid_usuario {
    type: number
    sql: ${TABLE}.MCIdUsuario ;;
  }

  dimension: menu_completo_usuarioxx {
    type: number
    sql: ${TABLE}.MenuCompletoUsuarioxx ;;
  }

  dimension: micelularscannerusuario {
    type: number
    sql: ${TABLE}.micelularscannerusuario ;;
  }

  dimension: nivel_usuarioxx {
    type: number
    sql: ${TABLE}.NivelUsuarioxx ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: nombre_perfil_usuario {
    type: string
    sql: ${TABLE}.NombrePerfilUsuario ;;
  }

  dimension: numero_color_tablas_usuario {
    type: number
    sql: ${TABLE}.NumeroColorTablasUsuario ;;
  }

  dimension: numero_color_text_box_usuario {
    type: number
    sql: ${TABLE}.NumeroColorTextBoxUsuario ;;
  }

  dimension: perfiles_usuario {
    type: string
    sql: ${TABLE}.PerfilesUsuario ;;
  }

  dimension: permisos_especiales1_usuario {
    type: string
    sql: ${TABLE}.PermisosEspeciales1Usuario ;;
  }

  dimension: tareas_de_soporte_usuario {
    type: string
    sql: ${TABLE}.TareasDeSoporteUsuario ;;
  }

  dimension: texto_firma_mail_usuario {
    type: string
    sql: ${TABLE}.TextoFirmaMailUsuario ;;
  }

  dimension: uuidusuario {
    type: string
    sql: ${TABLE}.UUIDusuario ;;
  }

  dimension: valores_xdefecto_usuario {
    type: string
    sql: ${TABLE}.ValoresXDefectoUsuario ;;
  }

  dimension: variosusuario {
    type: string
    sql: ${TABLE}.variosusuario ;;
  }
  measure: count {
    type: count
  }
}
