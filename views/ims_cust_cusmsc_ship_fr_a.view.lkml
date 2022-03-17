# The name of this view in Looker is "Ims Cust Cusmsc Ship Fr A"
view: ims_cust_cusmsc_ship_fr_a {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_CUST_CUSMSC_SHIP_FR_A`
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

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: misc_stuff {
    type: string
    sql: ${TABLE}.MISC_STUFF ;;
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

  dimension: segment_type {
    type: string
    sql: ${TABLE}.SEGMENT_TYPE ;;
  }

  dimension: seq_nbr {
    type: string
    sql: ${TABLE}.SEQ_NBR ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
