# The name of this view in Looker is "Dim Vendor"
view: dim_vendor {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `imsandboxpoc2.ODS_PROD.DIM_VENDOR`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: recordexpdt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.RECORDEXPDT ;;
  }

  dimension_group: recordloaddt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.RECORDLOADDT ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Vendor" in Explore.

  dimension: vendor {
    type: string
    sql: ${TABLE}.VENDOR ;;
  }

  dimension: vendorkey {
    type: number
    sql: ${TABLE}.VENDORKEY ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_vendorkey {
    type: sum
    sql: ${vendorkey} ;;
  }

  measure: average_vendorkey {
    type: average
    sql: ${vendorkey} ;;
  }

  dimension: vendornbr {
    type: string
    sql: ${TABLE}.VENDORNBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
