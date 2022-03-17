# The name of this view in Looker is "Ar Paid"
view: ar_paid {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.AR_PAID`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Applyingbrnbr" in Explore.

  dimension: applyingbrnbr {
    type: string
    sql: ${TABLE}.APPLYINGBRNBR ;;
  }

  dimension: batchnbr {
    type: string
    sql: ${TABLE}.BATCHNBR ;;
  }

  dimension: branchbilltonbr {
    type: string
    sql: ${TABLE}.BRANCHBILLTONBR ;;
  }

  dimension: branchcustomernbr {
    type: string
    sql: ${TABLE}.BRANCHCUSTOMERNBR ;;
  }

  dimension: branchnbr {
    type: string
    sql: ${TABLE}.BRANCHNBR ;;
  }

  dimension: checkapplycd {
    type: string
    sql: ${TABLE}.CHECKAPPLYCD ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: checkdt {
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
    sql: ${TABLE}.CHECKDT ;;
  }

  dimension: checkindcd {
    type: string
    sql: ${TABLE}.CHECKINDCD ;;
  }

  dimension: checknbr {
    type: string
    sql: ${TABLE}.CHECKNBR ;;
  }

  dimension: citycd {
    type: string
    sql: ${TABLE}.CITYCD ;;
  }

  dimension: citytaxamt {
    type: number
    sql: ${TABLE}.CITYTAXAMT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_citytaxamt {
    type: sum
    sql: ${citytaxamt} ;;
  }

  measure: average_citytaxamt {
    type: average
    sql: ${citytaxamt} ;;
  }

  dimension: companycd {
    type: string
    sql: ${TABLE}.COMPANYCD ;;
  }

  dimension: countycd {
    type: string
    sql: ${TABLE}.COUNTYCD ;;
  }

  dimension: countytaxamt {
    type: number
    sql: ${TABLE}.COUNTYTAXAMT ;;
  }

  dimension: currencycd {
    type: string
    sql: ${TABLE}.CURRENCYCD ;;
  }

  dimension: currencyrateamt {
    type: number
    sql: ${TABLE}.CURRENCYRATEAMT ;;
  }

  dimension: currrateatpayamt {
    type: number
    sql: ${TABLE}.CURRRATEATPAYAMT ;;
  }

  dimension: customerkey {
    type: number
    sql: ${TABLE}.CUSTOMERKEY ;;
  }

  dimension: custordernbr {
    type: string
    sql: ${TABLE}.CUSTORDERNBR ;;
  }

  dimension_group: discdt {
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
    sql: ${TABLE}.DISCDT ;;
  }

  dimension: discountavailamt {
    type: number
    sql: ${TABLE}.DISCOUNTAVAILAMT ;;
  }

  dimension: discounttakenamt {
    type: number
    sql: ${TABLE}.DISCOUNTTAKENAMT ;;
  }

  dimension_group: duedt {
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
    sql: ${TABLE}.DUEDT ;;
  }

  dimension: foreigndiscavailamt {
    type: number
    sql: ${TABLE}.FOREIGNDISCAVAILAMT ;;
  }

  dimension: foreigndisctakenamt {
    type: number
    sql: ${TABLE}.FOREIGNDISCTAKENAMT ;;
  }

  dimension: foreigninvamt {
    type: number
    sql: ${TABLE}.FOREIGNINVAMT ;;
  }

  dimension: foreigntaxamt {
    type: number
    sql: ${TABLE}.FOREIGNTAXAMT ;;
  }

  dimension: glaccountnbr {
    type: number
    sql: ${TABLE}.GLACCOUNTNBR ;;
  }

  dimension: glbranchnbr {
    type: string
    sql: ${TABLE}.GLBRANCHNBR ;;
  }

  dimension: invoiceamt {
    type: number
    sql: ${TABLE}.INVOICEAMT ;;
  }

  dimension_group: invoicedt {
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
    sql: ${TABLE}.INVOICEDT ;;
  }

  dimension: invoicenbr {
    type: string
    sql: ${TABLE}.INVOICENBR ;;
  }

  dimension: loadbatchnbr {
    type: number
    sql: ${TABLE}.LOADBATCHNBR ;;
  }

  dimension: loadmodcd {
    type: string
    sql: ${TABLE}.LOADMODCD ;;
  }

  dimension_group: mgln_loadts {
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
    sql: ${TABLE}.MGLN_LOADTS ;;
  }

  dimension: origseqnbr {
    type: string
    sql: ${TABLE}.ORIGSEQNBR ;;
  }

  dimension: paymenttypecd {
    type: string
    sql: ${TABLE}.PAYMENTTYPECD ;;
  }

  dimension: payseqnbr {
    type: string
    sql: ${TABLE}.PAYSEQNBR ;;
  }

  dimension: recordseqnbr {
    type: string
    sql: ${TABLE}.RECORDSEQNBR ;;
  }

  dimension: rectypearpcd {
    type: string
    sql: ${TABLE}.RECTYPEARPCD ;;
  }

  dimension: statecd {
    type: string
    sql: ${TABLE}.STATECD ;;
  }

  dimension: statetaxamt {
    type: number
    sql: ${TABLE}.STATETAXAMT ;;
  }

  dimension: taxcd {
    type: string
    sql: ${TABLE}.TAXCD ;;
  }

  dimension: writeofftypecd {
    type: string
    sql: ${TABLE}.WRITEOFFTYPECD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
