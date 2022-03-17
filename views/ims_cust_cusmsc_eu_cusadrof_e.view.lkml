# The name of this view in Looker is "Ims Cust Cusmsc Eu Cusadrof E"
view: ims_cust_cusmsc_eu_cusadrof_e {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_CUST_CUSMSC_EU_CUSADROF_E`
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

  dimension: ec1_chamber_of_commerce {
    type: string
    sql: ${TABLE}.EC1_CHAMBER_OF_COMMERCE ;;
  }

  dimension: euro_cusadrof_cust_suffix {
    type: string
    sql: ${TABLE}.EURO_CUSADROF_CUST_SUFFIX ;;
  }

  dimension: euro_cusadrof_type {
    type: string
    sql: ${TABLE}.EURO_CUSADROF_TYPE ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
