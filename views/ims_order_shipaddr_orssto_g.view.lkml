# The name of this view in Looker is "Ims Order Shipaddr Orssto G"
view: ims_order_shipaddr_orssto_g {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_ORDER_SHIPADDR_ORSSTO_G`
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

  dimension: codepage {
    type: number
    sql: ${TABLE}.CODEPAGE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_codepage {
    type: sum
    sql: ${codepage} ;;
  }

  measure: average_codepage {
    type: average
    sql: ${codepage} ;;
  }

  dimension: company_cd {
    type: string
    sql: ${TABLE}.COMPANY_CD ;;
  }

  dimension: intl_addr {
    type: string
    sql: ${TABLE}.INTL_ADDR ;;
  }

  dimension: intl_cnty {
    type: string
    sql: ${TABLE}.INTL_CNTY ;;
  }

  dimension: intl_fax {
    type: string
    sql: ${TABLE}.INTL_FAX ;;
  }

  dimension: intl_mobile {
    type: string
    sql: ${TABLE}.INTL_MOBILE ;;
  }

  dimension: intl_phone {
    type: string
    sql: ${TABLE}.INTL_PHONE ;;
  }

  dimension: intl_zip {
    type: string
    sql: ${TABLE}.INTL_ZIP ;;
  }

  dimension: line_of_addr {
    type: string
    sql: ${TABLE}.LINE_OF_ADDR ;;
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

  dimension: ordr_nbr {
    type: string
    sql: ${TABLE}.ORDR_NBR ;;
  }

  dimension: segment_type {
    type: string
    sql: ${TABLE}.SEGMENT_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
