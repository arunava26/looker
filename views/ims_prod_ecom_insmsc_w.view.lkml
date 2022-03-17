# The name of this view in Looker is "Ims Prod Ecom Insmsc W"
view: ims_prod_ecom_insmsc_w {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_ECOM_INSMSC_W`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Br Ind" in Explore.

  dimension: br_ind {
    type: string
    sql: ${TABLE}.BR_IND ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: ecom_spec_col_ind {
    type: string
    sql: ${TABLE}.ECOM_SPEC_COL_IND ;;
  }

  dimension: ecom_spec_col_pct {
    type: number
    sql: ${TABLE}.ECOM_SPEC_COL_PCT ;;
  }

  dimension: ecom_spec_eff_date {
    type: number
    sql: ${TABLE}.ECOM_SPEC_EFF_DATE ;;
  }

  dimension: ecom_spec_exp_date {
    type: number
    sql: ${TABLE}.ECOM_SPEC_EXP_DATE ;;
  }

  dimension: ecom_spec_free_part {
    type: string
    sql: ${TABLE}.ECOM_SPEC_FREE_PART ;;
  }

  dimension: ecom_spec_free_qty {
    type: number
    sql: ${TABLE}.ECOM_SPEC_FREE_QTY ;;
  }

  dimension: ecom_spec_min_qty {
    type: number
    sql: ${TABLE}.ECOM_SPEC_MIN_QTY ;;
  }

  dimension: ecom_spec_price {
    type: number
    sql: ${TABLE}.ECOM_SPEC_PRICE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_ecom_spec_price {
    type: sum
    sql: ${ecom_spec_price} ;;
  }

  measure: average_ecom_spec_price {
    type: average
    sql: ${ecom_spec_price} ;;
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

  dimension: segment_ind {
    type: string
    sql: ${TABLE}.SEGMENT_IND ;;
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
