# The name of this view in Looker is "Bonotas"
view: bonotas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_master2operativo.bonotas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Clave Bonota" in Explore.

  dimension: clave_bonota {
    type: string
    sql: ${TABLE}.ClaveBONota ;;
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

  dimension: fecha_bonota {
    type: number
    sql: ${TABLE}.FechaBONota ;;
  }

  dimension: hora_bonota {
    type: string
    sql: ${TABLE}.HoraBONota ;;
  }

  dimension: id_bonota {
    type: number
    sql: ${TABLE}.idBONota ;;
  }

  dimension: id_bousuario {
    type: number
    sql: ${TABLE}.idBOUsuario ;;
  }

  dimension: texto_bonota {
    type: string
    sql: ${TABLE}.TextoBONota ;;
  }
  measure: count {
    type: count
  }
}
