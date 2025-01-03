# The name of this view in Looker is "Ds Master2operativo Bopvnovedades"
view: ds_master2operativo_bopvnovedades {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2operativo.bopvnovedades` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Auxidbopvestado" in Explore.

  dimension: auxidbopvestado {
    type: number
    sql: ${TABLE}.auxidbopvestado ;;
  }

  dimension: auxiliar_bo_pv_novedad {
    type: string
    sql: ${TABLE}.AuxiliarBoPvNovedad ;;
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

  dimension: estado_presupuesto_bo_pvnovedad {
    type: number
    sql: ${TABLE}.EstadoPresupuestoBoPVNovedad ;;
  }

  dimension: fecha_bopvnovedad {
    type: number
    sql: ${TABLE}.FechaBOPVNovedad ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_hora_bo_pv_novedad {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FechaHoraBoPvNovedad ;;
  }

  dimension: hora_bopvnovedad {
    type: string
    sql: ${TABLE}.HoraBOPVNovedad ;;
  }

  dimension: id_bo_comprobante_nc {
    type: number
    sql: ${TABLE}.idBoComprobanteNC ;;
  }

  dimension: id_bo_dep_ubicacion {
    type: number
    sql: ${TABLE}.idBoDepUbicacion ;;
  }

  dimension: id_bo_pv_estado_anterior {
    type: number
    sql: ${TABLE}.idBoPvEstadoAnterior ;;
  }

  dimension: id_bo_usuario_tecnico {
    type: number
    sql: ${TABLE}.idBoUsuarioTecnico ;;
  }

  dimension: id_bocomprobante {
    type: number
    sql: ${TABLE}.idBOComprobante ;;
  }

  dimension: id_bodomicilio {
    type: number
    sql: ${TABLE}.idBODomicilio ;;
  }

  dimension: id_bopvestado {
    type: number
    sql: ${TABLE}.idBOPVEstado ;;
  }

  dimension: id_bopvnovedad {
    type: number
    sql: ${TABLE}.idBOPVNovedad ;;
  }

  dimension: id_bopvnovedad_auxiliar {
    type: number
    sql: ${TABLE}.idBOPVNovedadAuxiliar ;;
  }

  dimension: id_bost_movimiento {
    type: number
    sql: ${TABLE}.idBOStMovimiento ;;
  }

  dimension: id_bousuario {
    type: number
    sql: ${TABLE}.idBOUsuario ;;
  }

  dimension: idboreparacion {
    type: number
    sql: ${TABLE}.idboreparacion ;;
  }

  dimension: idbostmovserie {
    type: number
    sql: ${TABLE}.idbostmovserie ;;
  }

  dimension: mcid_reparacion {
    type: number
    sql: ${TABLE}.MCIdReparacion ;;
  }

  dimension: numero_orst_bo_pv_novedad {
    type: number
    sql: ${TABLE}.NumeroORStBoPvNovedad ;;
  }

  dimension: numero_presupuestobo_pv_novedad {
    type: number
    sql: ${TABLE}.NumeroPresupuestoboPvNovedad ;;
  }

  dimension: sector_bopvnovedad {
    type: string
    sql: ${TABLE}.SectorBOPVNovedad ;;
  }

  dimension: texto_bopvnovedad {
    type: string
    sql: ${TABLE}.TextoBOPVNovedad ;;
  }

  dimension: tipo_bopvnovedad {
    type: number
    sql: ${TABLE}.TipoBOPVNovedad ;;
  }

  dimension: valor_presupuestado_bo_pvnovedad {
    type: number
    sql: ${TABLE}.ValorPresupuestadoBoPVNovedad ;;
  }
  measure: count {
    type: count
  }
}
