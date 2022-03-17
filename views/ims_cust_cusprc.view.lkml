# The name of this view in Looker is "Ims Cust Cusprc"
view: ims_cust_cusprc {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_CUST_CUSPRC`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Br Nbr" in Explore.

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: cat_subcat {
    type: number
    sql: ${TABLE}.CAT_SUBCAT ;;
  }

  dimension: chg_date {
    type: number
    sql: ${TABLE}.CHG_DATE ;;
  }

  dimension: column_disc_1 {
    type: number
    sql: ${TABLE}.COLUMN_DISC_1 ;;
  }

  dimension: column_disc_2 {
    type: number
    sql: ${TABLE}.COLUMN_DISC_2 ;;
  }

  dimension: column_disc_3 {
    type: number
    sql: ${TABLE}.COLUMN_DISC_3 ;;
  }

  dimension: column_disc_4 {
    type: number
    sql: ${TABLE}.COLUMN_DISC_4 ;;
  }

  dimension: column_disc_5 {
    type: number
    sql: ${TABLE}.COLUMN_DISC_5 ;;
  }

  dimension: column_disc_new_1 {
    type: number
    sql: ${TABLE}.COLUMN_DISC_NEW_1 ;;
  }

  dimension: column_disc_new_2 {
    type: number
    sql: ${TABLE}.COLUMN_DISC_NEW_2 ;;
  }

  dimension: column_disc_new_3 {
    type: number
    sql: ${TABLE}.COLUMN_DISC_NEW_3 ;;
  }

  dimension: column_disc_new_4 {
    type: number
    sql: ${TABLE}.COLUMN_DISC_NEW_4 ;;
  }

  dimension: column_disc_new_5 {
    type: number
    sql: ${TABLE}.COLUMN_DISC_NEW_5 ;;
  }

  dimension: column_ind_1 {
    type: string
    sql: ${TABLE}.COLUMN_IND_1 ;;
  }

  dimension: column_ind_2 {
    type: string
    sql: ${TABLE}.COLUMN_IND_2 ;;
  }

  dimension: column_ind_3 {
    type: string
    sql: ${TABLE}.COLUMN_IND_3 ;;
  }

  dimension: column_ind_4 {
    type: string
    sql: ${TABLE}.COLUMN_IND_4 ;;
  }

  dimension: column_ind_5 {
    type: string
    sql: ${TABLE}.COLUMN_IND_5 ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: incl_discount_ind {
    type: string
    sql: ${TABLE}.INCL_DISCOUNT_IND ;;
  }

  dimension: key_type {
    type: string
    sql: ${TABLE}.KEY_TYPE ;;
  }

  dimension: master_vend_price_ind {
    type: string
    sql: ${TABLE}.MASTER_VEND_PRICE_IND ;;
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

  dimension: omp_freight_markup {
    type: number
    sql: ${TABLE}.OMP_FREIGHT_MARKUP ;;
  }

  dimension: omp_price_markup {
    type: number
    sql: ${TABLE}.OMP_PRICE_MARKUP ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_omp_price_markup {
    type: sum
    sql: ${omp_price_markup} ;;
  }

  measure: average_omp_price_markup {
    type: average
    sql: ${omp_price_markup} ;;
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
