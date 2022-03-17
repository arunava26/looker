# The name of this view in Looker is "Vsam Ielmst Sys Item Hdr"
view: vsam_ielmst_sys_item_hdr {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.VSAM_IELMST_SYS_ITEM_HDR`
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

  dimension: date_created {
    type: number
    sql: ${TABLE}.DATE_CREATED ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_date_created {
    type: sum
    sql: ${date_created} ;;
  }

  measure: average_date_created {
    type: average
    sql: ${date_created} ;;
  }

  dimension: eff_date {
    type: number
    sql: ${TABLE}.EFF_DATE ;;
  }

  dimension: exp_date {
    type: number
    sql: ${TABLE}.EXP_DATE ;;
  }

  dimension: kit_part_nbr {
    type: string
    sql: ${TABLE}.KIT_PART_NBR ;;
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

  dimension: promo_kit_sw {
    type: string
    sql: ${TABLE}.PROMO_KIT_SW ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
