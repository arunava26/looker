# The name of this view in Looker is "Dw Adobe Addtocartlocation"
view: dw_adobe_addtocartlocation {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `imsandboxpoc2.ODS_PROD.DW_ADOBE_ADDTOCARTLOCATION`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Add to Cart Location" in Explore.

  dimension: add_to_cart_location {
    type: string
    sql: ${TABLE}.ADD_TO_CART_LOCATION ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: dates {
    type: string
    sql: ${TABLE}.DATES ;;
  }

  dimension: ingram_reseller_id {
    type: string
    sql: ${TABLE}.INGRAM_RESELLER_ID ;;
  }

  dimension: ingram_reseller_id_cc {
    type: string
    sql: ${TABLE}.INGRAM_RESELLER_ID_CC ;;
  }

  dimension: page_type {
    type: string
    sql: ${TABLE}.PAGE_TYPE ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.REVENUE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_revenue {
    type: sum
    sql: ${revenue} ;;
  }

  measure: average_revenue {
    type: average
    sql: ${revenue} ;;
  }



  dimension: visitor_id {
    type: string
    sql: ${TABLE}.VISITOR_ID ;;
  }

  dimension: visits {
    type: number
    sql: ${TABLE}.VISITS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
