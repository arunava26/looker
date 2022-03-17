# The name of this view in Looker is "Ods Order Invoice Nbr"
view: ods_order_invoice_nbr {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_ORDER_INVOICE_NBR`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Branch Nbr" in Explore.

  dimension: branch_nbr {
    type: string
    sql: ${TABLE}.BRANCH_NBR ;;
  }

  dimension: company_cd {
    type: string
    sql: ${TABLE}.COMPANY_CD ;;
  }

  dimension: dist_nbr {
    type: string
    sql: ${TABLE}.DIST_NBR ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: invoice_dt {
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
    sql: ${TABLE}.INVOICE_DT ;;
  }

  dimension: invoice_nbr {
    type: string
    sql: ${TABLE}.INVOICE_NBR ;;
  }

  dimension_group: ordr_dt {
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
    sql: ${TABLE}.ORDR_DT ;;
  }

  dimension: ordr_nbr {
    type: string
    sql: ${TABLE}.ORDR_NBR ;;
  }

  dimension: ship_nbr {
    type: string
    sql: ${TABLE}.SHIP_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
