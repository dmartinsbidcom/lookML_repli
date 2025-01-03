# The name of this view in Looker is "Mla Virtual Rep"
view: mla_virtual_rep {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gestion_comercial.mla_virtual_rep` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Estado" in Explore.

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }

  dimension: producto_denominacin {
    type: string
    sql: ${TABLE}.`Producto: Denominación` ;;
  }

  dimension: publicacin_publicacin {
    type: string
    sql: ${TABLE}.`Publicación: Publicación` ;;
  }

  dimension: sku_ml {
    type: string
    sql: ${TABLE}.`SKU ML` ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: usuario_ml_vendedor {
    type: string
    sql: ${TABLE}.`Usuario ML Vendedor` ;;
  }
  measure: count {
    type: count
  }
}
