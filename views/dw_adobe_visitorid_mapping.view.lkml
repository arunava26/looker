# The name of this view in Looker is "Dw Adobe Visitorid Mapping"
view: dw_adobe_visitorid_mapping {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `imsandboxpoc2.ODS_PROD.DW_ADOBE_VISITORID_MAPPING`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Country" in Explore.

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

  dimension: site_name {
    type: string
    sql: ${TABLE}.SITE_NAME ;;
  }

  dimension: visitor_id {
    type: string
    sql: ${TABLE}.VISITOR_ID ;;
  }

  dimension: visits {
    type: number
    sql: ${TABLE}.VISITS ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_visits {
    type: sum
    sql: ${visits} ;;
  }

  measure: average_visits {
    type: average
    sql: ${visits} ;;
  }

  measure: count {
    type: count
    drill_fields: [site_name]
  }
}
