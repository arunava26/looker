# The name of this view in Looker is "Ims Prod Frgn Ccy Insmsc"
view: ims_prod_frgn_ccy_insmsc {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_FRGN_CCY_INSMSC`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Company" in Explore.

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: conv_base_price {
    type: number
    sql: ${TABLE}.CONV_BASE_PRICE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_conv_base_price {
    type: sum
    sql: ${conv_base_price} ;;
  }

  measure: average_conv_base_price {
    type: average
    sql: ${conv_base_price} ;;
  }

  dimension: conv_duty_table_code {
    type: string
    sql: ${TABLE}.CONV_DUTY_TABLE_CODE ;;
  }

  dimension: conv_misc_cost {
    type: number
    sql: ${TABLE}.CONV_MISC_COST ;;
  }

  dimension: conv_tax_table_code {
    type: string
    sql: ${TABLE}.CONV_TAX_TABLE_CODE ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.CURRENCY_CODE ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: ods_lst_upd_dt {
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
    sql: ${TABLE}.ODS_LST_UPD_DT ;;
  }

  dimension: seq_nbr {
    type: number
    sql: ${TABLE}.SEQ_NBR ;;
  }

  dimension: vendor_nbr {
    type: string
    sql: ${TABLE}.VENDOR_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
