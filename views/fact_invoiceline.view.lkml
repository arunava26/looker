# The name of this view in Looker is "Fact Invoiceline"
view: fact_invoiceline {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `imsandboxpoc2.ODS_PROD.FACT_INVOICELINE`
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

  dimension: calculatedprice {
    type: number
    sql: ${TABLE}.CALCULATEDPRICE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_calculatedprice {
    type: sum
    sql: ${calculatedprice} ;;
  }

  measure: average_calculatedprice {
    type: average
    sql: ${calculatedprice} ;;
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
    type: string
    sql: ${TABLE}.CUSTOMERKEY ;;
  }

  dimension: custponbr {
    type: string
    sql: ${TABLE}.CUSTPONBR ;;
  }

  dimension: datetimekey {
    type: string
    sql: ${TABLE}.DATETIMEKEY ;;
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

  dimension: invoicelinekey {
    type: string
    sql: ${TABLE}.INVOICELINEKEY ;;
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

  dimension: ordernbr {
    type: string
    sql: ${TABLE}.ORDERNBR ;;
  }

  dimension: ordershipfrom {
    type: string
    sql: ${TABLE}.ORDERSHIPFROM ;;
  }

  dimension: orderstatus {
    type: string
    sql: ${TABLE}.ORDERSTATUS ;;
  }

  dimension: productkey {
    type: string
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
    type: string
    sql: ${TABLE}.VENDORKEY ;;
  }

  dimension: channel {

    type: string
    sql: CASE WHEN ${entrymethod} = 'L' and ${termidcd} in ('WEBA','WEBO','LU6G','WEB2','HERM','WEBL') and left(${branchcustomernbr},2) not in ('16','IC') THEN 'WEB'
         WHEN ${entrymethod} = 'ZWEB' and left(${branchcustomernbr},2) not in ('16','IC')  THEN 'WEB'
         WHEN ${termidcd} = 'VENP' and left(${branchcustomernbr},2) not in ('16','IC')  THEN 'Vendor Portals'
         WHEN ${entrymethod} = 'O' and left(${branchcustomernbr},2) not in ('16','IC')   THEN 'EDI'
         WHEN ${entrymethod} = 'L' and ${termidcd} in ('BTCH') and left(${branchcustomernbr},2) not in ('16','IC')  THEN 'EDI'
         WHEN ${entrymethod} = 'ZEDI'  and left(${branchcustomernbr},2) not in ('16','IC')  THEN 'EDI'
         WHEN ${entrymethod} = 'L' and ${termidcd} in ('WEBX','LU6X')  and left(${branchcustomernbr},2) not in ('16','IC')  THEN 'XML'
         WHEN ${entrymethod} = 'ZXML'  and left(${branchcustomernbr},2) not in ('16','IC')  THEN 'XML'
         WHEN ${entrymethod} = 'L' and ${termidcd} in ('WEBS')  and left(${branchcustomernbr},2) not in ('16','IC')  THEN 'API'
         WHEN ${termidcd} = 'G360'  and left(${branchcustomernbr},2) not in ('16','IC')   THEN 'Manual Quote to Order'
         WHEN ${entrymethod} = 'CMP' and left(${branchcustomernbr},2) not in ('16','IC') THEN ${category1}
         ELSE 'Manual Entry'
     END
      ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_extendedsales {
    type: sum
    label: "Revenue"
    sql: ${extendedsales}*${multiplybyforusd} ;;
    drill_fields: [detail*]
    html: @{big_money_format} ;;
  }

  measure: order_distinct_count {
    type: count_distinct
    label: "# Orders"
    sql: concat(${TABLE}.COMPANYCD,${TABLE}.ORDERNBR,${TABLE}.ENTRYDT) ;;
    drill_fields: [entrymethod,termidcd,dim_customer.custname,category1,extendedsales]
    #value_format: "[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0.00"
    html: @{big_number_format} ;;
  }

  set:detail {
    fields: [entrymethod,termidcd,dim_customer.custname,category1,extendedsales]
  }
}
