# The name of this view in Looker is "Ods Brxfer Line Acop"
view: ods_brxfer_line_acop {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.ODS_BRXFER_LINE_ACOP`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Acop Btl Override Ind" in Explore.

  dimension: acop_btl_override_ind {
    type: string
    sql: ${TABLE}.ACOP_BTL_OVERRIDE_IND ;;
  }

  dimension: acop_code {
    type: string
    sql: ${TABLE}.ACOP_CODE ;;
  }

  dimension: acop_curr_code {
    type: string
    sql: ${TABLE}.ACOP_CURR_CODE ;;
  }

  dimension: acop_curr_rate {
    type: number
    sql: ${TABLE}.ACOP_CURR_RATE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_acop_curr_rate {
    type: sum
    sql: ${acop_curr_rate} ;;
  }

  measure: average_acop_curr_rate {
    type: average
    sql: ${acop_curr_rate} ;;
  }

  dimension: acop_override_ind {
    type: string
    sql: ${TABLE}.ACOP_OVERRIDE_IND ;;
  }

  dimension: acop_pocc_ind {
    type: string
    sql: ${TABLE}.ACOP_POCC_IND ;;
  }

  dimension: acop_trk_nbr {
    type: number
    sql: ${TABLE}.ACOP_TRK_NBR ;;
  }

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

  dimension: ims_del_flg {
    type: string
    sql: ${TABLE}.IMS_DEL_FLG ;;
  }

  dimension: line_nbr {
    type: string
    sql: ${TABLE}.LINE_NBR ;;
  }

  dimension: maq_ind {
    type: string
    sql: ${TABLE}.MAQ_IND ;;
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

  dimension: seg_type {
    type: string
    sql: ${TABLE}.SEG_TYPE ;;
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
