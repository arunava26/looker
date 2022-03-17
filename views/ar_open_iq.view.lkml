# The name of this view in Looker is "Ar Open Iq"
view: ar_open_iq {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.AR_OPEN_IQ`
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

  dimension: billtobrcustnbr {
    type: string
    sql: ${TABLE}.BILLTOBRCUSTNBR ;;
  }

  dimension: branchcustomernbr {
    type: string
    sql: ${TABLE}.BRANCHCUSTOMERNBR ;;
  }

  dimension: branchinvoicenbr {
    type: string
    sql: ${TABLE}.BRANCHINVOICENBR ;;
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

  dimension: checknbr {
    type: string
    sql: ${TABLE}.CHECKNBR ;;
  }

  dimension: checktermscd {
    type: string
    sql: ${TABLE}.CHECKTERMSCD ;;
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

  dimension: costadjustmentamt {
    type: number
    sql: ${TABLE}.COSTADJUSTMENTAMT ;;
  }

  dimension: countycd {
    type: string
    sql: ${TABLE}.COUNTYCD ;;
  }

  dimension: countytaxamt {
    type: number
    sql: ${TABLE}.COUNTYTAXAMT ;;
  }

  dimension: crstatuscd {
    type: string
    sql: ${TABLE}.CRSTATUSCD ;;
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

  dimension: draftamt {
    type: number
    sql: ${TABLE}.DRAFTAMT ;;
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

  dimension: foreigncostadjamt {
    type: number
    sql: ${TABLE}.FOREIGNCOSTADJAMT ;;
  }

  dimension: foreigndiscavailamt {
    type: number
    sql: ${TABLE}.FOREIGNDISCAVAILAMT ;;
  }

  dimension: foreigndisctakenamt {
    type: number
    sql: ${TABLE}.FOREIGNDISCTAKENAMT ;;
  }

  dimension: foreignsalesamt {
    type: number
    sql: ${TABLE}.FOREIGNSALESAMT ;;
  }

  dimension: foreigntaxamt {
    type: number
    sql: ${TABLE}.FOREIGNTAXAMT ;;
  }

  dimension: glaccountnbr {
    type: string
    sql: ${TABLE}.GLACCOUNTNBR ;;
  }

  dimension: glbrnbr {
    type: string
    sql: ${TABLE}.GLBRNBR ;;
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

  dimension: keyfillernbr {
    type: string
    sql: ${TABLE}.KEYFILLERNBR ;;
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

  dimension: newadjustmentcd {
    type: string
    sql: ${TABLE}.NEWADJUSTMENTCD ;;
  }

  dimension: ordertypecd {
    type: string
    sql: ${TABLE}.ORDERTYPECD ;;
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

  dimension: postalcd {
    type: string
    sql: ${TABLE}.POSTALCD ;;
  }

  dimension: recordseqnbr {
    type: string
    sql: ${TABLE}.RECORDSEQNBR ;;
  }

  dimension: recordtypecd {
    type: string
    sql: ${TABLE}.RECORDTYPECD ;;
  }

  dimension: shiptosuffixnbr {
    type: string
    sql: ${TABLE}.SHIPTOSUFFIXNBR ;;
  }

  dimension: sourcecd {
    type: string
    sql: ${TABLE}.SOURCECD ;;
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

  dimension: termscd {
    type: string
    sql: ${TABLE}.TERMSCD ;;
  }

  dimension: totalcostamt {
    type: number
    sql: ${TABLE}.TOTALCOSTAMT ;;
  }

  dimension: totaldiscavailamt {
    type: number
    sql: ${TABLE}.TOTALDISCAVAILAMT ;;
  }

  dimension: totaldisctakenamt {
    type: number
    sql: ${TABLE}.TOTALDISCTAKENAMT ;;
  }

  dimension: totalforgnsalesamt {
    type: number
    sql: ${TABLE}.TOTALFORGNSALESAMT ;;
  }

  dimension: totalsalesamt {
    type: number
    sql: ${TABLE}.TOTALSALESAMT ;;
  }

  dimension: warrantycd {
    type: string
    sql: ${TABLE}.WARRANTYCD ;;
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
