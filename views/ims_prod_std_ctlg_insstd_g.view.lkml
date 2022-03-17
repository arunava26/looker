# The name of this view in Looker is "Ims Prod Std Ctlg Insstd G"
view: ims_prod_std_ctlg_insstd_g {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_PROD_STD_CTLG_INSSTD_G`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Catalog 1" in Explore.

  dimension: catalog_1 {
    type: string
    sql: ${TABLE}.CATALOG_1 ;;
  }

  dimension: catalog_2 {
    type: string
    sql: ${TABLE}.CATALOG_2 ;;
  }

  dimension: catalog_3 {
    type: string
    sql: ${TABLE}.CATALOG_3 ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
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

  dimension: pur_suf_1 {
    type: string
    sql: ${TABLE}.PUR_SUF_1 ;;
  }

  dimension: pur_suf_2 {
    type: string
    sql: ${TABLE}.PUR_SUF_2 ;;
  }

  dimension: pur_vend_1 {
    type: string
    sql: ${TABLE}.PUR_VEND_1 ;;
  }

  dimension: pur_vend_2 {
    type: string
    sql: ${TABLE}.PUR_VEND_2 ;;
  }

  dimension: segment_ind {
    type: string
    sql: ${TABLE}.SEGMENT_IND ;;
  }

  dimension: seq_nbr {
    type: number
    sql: ${TABLE}.SEQ_NBR ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_seq_nbr {
    type: sum
    sql: ${seq_nbr} ;;
  }

  measure: average_seq_nbr {
    type: average
    sql: ${seq_nbr} ;;
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
