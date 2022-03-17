# The name of this view in Looker is "Ims Cust Cusiadr"
view: ims_cust_cusiadr {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_CUST_CUSIADR`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    sql: ${TABLE}.ADDRESS ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: codepage {
    type: number
    sql: ${TABLE}.CODEPAGE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_codepage {
    type: sum
    sql: ${codepage} ;;
  }

  measure: average_codepage {
    type: average
    sql: ${codepage} ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: ctry {
    type: string
    sql: ${TABLE}.CTRY ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: line_nbr {
    type: string
    sql: ${TABLE}.LINE_NBR ;;
  }

  dimension: mobile {
    type: string
    sql: ${TABLE}.MOBILE ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ods_lst_upd_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.ODS_LST_UPD_TS ;;
  }

  dimension: suffix {
    type: string
    sql: ${TABLE}.SUFFIX ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.ZIP ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
