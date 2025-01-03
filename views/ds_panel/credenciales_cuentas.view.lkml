# The name of this view in Looker is "Credenciales Cuentas"
view: credenciales_cuentas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ds_panel.credenciales_cuentas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activo En" in Explore.

  dimension: activo_en {
    type: string
    sql: ${TABLE}.activo_en ;;
  }

  dimension: credencial1 {
    type: string
    sql: ${TABLE}.credencial1 ;;
  }

  dimension: credencial2 {
    type: string
    sql: ${TABLE}.credencial2 ;;
  }

  dimension: cuenta {
    type: number
    sql: ${TABLE}.cuenta ;;
  }

  dimension: cuit {
    type: string
    sql: ${TABLE}.cuit ;;
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

  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: estado {
    type: number
    sql: ${TABLE}.estado ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: id_site {
    type: string
    sql: ${TABLE}.idSite ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: pci_key {
    type: string
    sql: ${TABLE}.pciKey ;;
  }

  dimension: plataforma {
    type: number
    sql: ${TABLE}.plataforma ;;
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}.storeID ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }
  measure: count {
    type: count
    drill_fields: [username]
  }
}
