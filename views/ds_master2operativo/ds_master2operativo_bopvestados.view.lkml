# The name of this view in Looker is "Ds Master2operativo Bopvestados"
view: ds_master2operativo_bopvestados {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2operativo.bopvestados` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activo Bopvestado" in Explore.

  dimension: activo_bopvestado {
    type: number
    sql: ${TABLE}.ActivoBOPVEstado ;;
  }

  dimension: aptocalidadbopvestado {
    type: number
    sql: ${TABLE}.aptocalidadbopvestado ;;
  }

  dimension: aptoprodbidcombopvestado {
    type: number
    sql: ${TABLE}.aptoprodbidcombopvestado ;;
  }

  dimension: aptoprodclientebopvestado {
    type: number
    sql: ${TABLE}.aptoprodclientebopvestado ;;
  }

  dimension: aptormabopvestado {
    type: number
    sql: ${TABLE}.aptormabopvestado ;;
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

  dimension: estadoactualmaster {
    type: number
    sql: ${TABLE}.estadoactualmaster ;;
  }

  dimension: estadoinicialbopvestado {
    type: number
    sql: ${TABLE}.estadoinicialbopvestado ;;
  }

  dimension: func_habilit_movil_bo_pv_estado {
    type: string
    sql: ${TABLE}.FuncHabilitMovilBoPvEstado ;;
  }

  dimension: funciones_habilitadas_bo_pvestado {
    type: string
    sql: ${TABLE}.FuncionesHabilitadasBoPVEstado ;;
  }

  dimension: id_bopvestado {
    type: number
    sql: ${TABLE}.idBOPVEstado ;;
  }

  dimension: id_funciones_habilitadas_bo_pv_estado {
    type: string
    sql: ${TABLE}.idFuncionesHabilitadasBoPvEstado ;;
  }

  dimension: idbodepubicacion {
    type: number
    sql: ${TABLE}.idbodepubicacion ;;
  }

  dimension: ind_permiso_usuario_bo_pv_estado {
    type: number
    sql: ${TABLE}.IndPermisoUsuarioBoPvEstado ;;
  }

  dimension: mc_id_estado_equivalente {
    type: number
    sql: ${TABLE}.mcIdEstadoEquivalente ;;
  }

  dimension: nombre_activo_bo_pv_estado {
    type: string
    sql: ${TABLE}.NombreActivoBoPvEstado ;;
  }

  dimension: nombre_bopvestado {
    type: string
    sql: ${TABLE}.NombreBOPVEstado ;;
  }

  dimension: observacionestado {
    type: string
    sql: ${TABLE}.observacionestado ;;
  }

  dimension: orden_bo_pv_estado {
    type: number
    sql: ${TABLE}.OrdenBoPvEstado ;;
  }

  dimension: sector_bopvestado {
    type: string
    sql: ${TABLE}.SectorBOPVEstado ;;
  }

  dimension: varios_bo_pv_estado {
    type: string
    sql: ${TABLE}.VariosBoPvEstado ;;
  }
  measure: count {
    type: count
  }
}
