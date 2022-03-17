# The name of this view in Looker is "Ims Ap Apsdst"
view: ims_ap_apsdst {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_AP_APSDST`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amount" in Explore.

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount {
    type: sum
    sql: ${amount} ;;
  }

  measure: average_amount {
    type: average
    sql: ${amount} ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}.CLASS ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: dist_br_nbr {
    type: string
    sql: ${TABLE}.DIST_BR_NBR ;;
  }

  dimension: entry_month {
    type: string
    sql: ${TABLE}.ENTRY_MONTH ;;
  }

  dimension: entry_year {
    type: string
    sql: ${TABLE}.ENTRY_YEAR ;;
  }

  dimension: major_acct {
    type: string
    sql: ${TABLE}.MAJOR_ACCT ;;
  }

  dimension: minor_acct {
    type: string
    sql: ${TABLE}.MINOR_ACCT ;;
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

  dimension: seq_nbr {
    type: string
    sql: ${TABLE}.SEQ_NBR ;;
  }

  dimension: tax_code {
    type: string
    sql: ${TABLE}.TAX_CODE ;;
  }

  dimension: tax_rate {
    type: number
    sql: ${TABLE}.TAX_RATE ;;
  }

  dimension: taxable_amount {
    type: number
    sql: ${TABLE}.TAXABLE_AMOUNT ;;
  }

  dimension: transmittal_nbr {
    type: string
    sql: ${TABLE}.TRANSMITTAL_NBR ;;
  }

  dimension: transmittal_seq {
    type: string
    sql: ${TABLE}.TRANSMITTAL_SEQ ;;
  }

  dimension: vat_code {
    type: string
    sql: ${TABLE}.VAT_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
