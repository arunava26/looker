# The name of this view in Looker is "Fact Orderline"
view: fact_orderline {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `imsandboxpoc2.ODS_PROD.FACT_ORDERLINE`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Branchcustomernbr" in Explore.

  dimension: branchcustomernbr {
    type: string
    sql: ${TABLE}.BRANCHCUSTOMERNBR ;;
  }

  dimension: branchnbr {
    type: number
    sql: ${TABLE}.BRANCHNBR ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_branchnbr {
    type: sum
    sql: ${branchnbr} ;;
  }

  measure: average_branchnbr {
    type: average
    sql: ${branchnbr} ;;
  }

  dimension: calculatedprice {
    type: number
    sql: ${TABLE}.CALCULATEDPRICE ;;
  }

  dimension: category1 {
    type: string
    sql: ${TABLE}.CATEGORY1 ;;
  }

  dimension: category2 {
    type: string
    sql: ${TABLE}.CATEGORY2 ;;
  }

  dimension: category3 {
    type: string
    sql: ${TABLE}.CATEGORY3 ;;
  }

  dimension: companycd {
    type: string
    sql: ${TABLE}.COMPANYCD ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: currencycd {
    type: string
    sql: ${TABLE}.CURRENCYCD ;;
  }

  dimension: customerkey {
    type: number
    sql: ${TABLE}.CUSTOMERKEY ;;
  }

  dimension: custponbr {
    type: string
    sql: ${TABLE}.CUSTPONBR ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: entrydt {
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
    sql: ${TABLE}.ENTRYDT ;;
  }

  dimension: entrymethod {
    type: string
    sql: ${TABLE}.ENTRYMETHOD ;;
  }

  dimension: extendedcost {
    type: number
    sql: ${TABLE}.EXTENDEDCOST ;;
  }

  dimension: extendedsales {
    type: number
    sql: ${TABLE}.EXTENDEDSALES ;;
  }

  dimension_group: invoicedt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.INVOICEDT ;;
  }

  dimension: invoicenbr {
    type: string
    sql: ${TABLE}.INVOICENBR ;;
  }

  dimension: linenbr {
    type: number
    sql: ${TABLE}.LINENBR ;;
  }

  dimension: masterbrcustnbr {
    type: string
    sql: ${TABLE}.MASTERBRCUSTNBR ;;
  }

  dimension: multiplybyforusd {
    type: number
    sql: ${TABLE}.MULTIPLYBYFORUSD ;;
  }

  dimension: nooflines {
    type: number
    sql: ${TABLE}.NOOFLINES ;;
  }

  dimension: orderlinekey {
    type: number
    sql: ${TABLE}.ORDERLINEKEY ;;
  }

  dimension: ordernbr {
    type: string
    sql: ${TABLE}.ORDERNBR ;;
  }

  dimension: ordershipfrom {
    type: number
    sql: ${TABLE}.ORDERSHIPFROM ;;
  }

  dimension: orderstatus {
    type: string
    sql: ${TABLE}.ORDERSTATUS ;;
  }

  dimension: productkey {
    type: number
    sql: ${TABLE}.PRODUCTKEY ;;
  }

  dimension: qtyshipped {
    type: number
    sql: ${TABLE}.QTYSHIPPED ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension_group: shipmentdt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SHIPMENTDT ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: termidcd {
    type: string
    sql: ${TABLE}.TERMIDCD ;;
  }

  dimension: terms {
    type: number
    sql: ${TABLE}.TERMS ;;
  }

  dimension: termscd {
    type: number
    sql: ${TABLE}.TERMSCD ;;
  }

  dimension: vendorkey {
    type: number
    sql: ${TABLE}.VENDORKEY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
