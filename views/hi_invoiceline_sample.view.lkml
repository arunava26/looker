# The name of this view in Looker is "Hi Invoiceline Sample"
view: hi_invoiceline_sample {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODSPROD.HI_INVOICELINE`
    ;;
  #sql_table_name: `ODS_PROD.HI_INVOICELINE_SAMPLE`
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

  dimension: Global_Line_of_Business {
    type: string
    label: "Global Line of Business"
    sql: ${TABLE}.CATEGORY1 ;;
  }

  dimension: product_category2 {
    type: string
    label: "Product Category 2"
    sql: ${TABLE}.CATEGORY2 ;;
  }

  dimension: product_category3 {
    type: string
    label: "Product Category 3"
    sql: ${TABLE}.CATEGORY3 ;;
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
    label: "Company Cd"
    type: string
    sql: ${TABLE}.COMPANYCD ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: case WHEN ${TABLE}.Country not in ('Brightpoint India', 'Components', 'IM Brazil Solutions', 'Saudi Arabia') Then ${TABLE}.Country END;;
  }

  dimension: currencycd {
    type: string
    sql: ${TABLE}.CURRENCYCD ;;
  }

  dimension: custname {
    type: string
    sql: ${TABLE}.CUSTNAME ;;
  }

  dimension: customerkey {
    type: number
    sql: ${TABLE}.CUSTOMERKEY ;;
  }

  dimension: customernbr {
    type: string
    sql: ${TABLE}.CUSTOMERNBR ;;
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
    label: "Revenue"
    type: number
    sql: ${TABLE}.EXTENDEDSALES ;;
    value_format_name: usd
  }

  dimension: fismonthofyear {
    label: "Fiscal Month"
    type: number
    sql: ${TABLE}.FISMONTHOFYEAR ;;
  }

  dimension: fisquartername {
    label: "Fiscal Quarter"
    type: string
    sql:  ${TABLE}.FISQUARTERNAME  ;;
  }

  dimension: fisweekid {
    label: "Fiscal Week"
    type: number
    value_format_name: id
    sql: ${TABLE}.FISWEEKID ;;
  }

  dimension: fisyearid {
    label: "Fiscal Year"
    type: number
  #  value_format_name: id
    sql: ${TABLE}.FISYEARID ;;
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
    label: "masterbrcustnbr"
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
    type: number
    sql: ${TABLE}.ORDERSHIPFROM ;;
  }

  dimension: orderstatus {
    type: string
    sql: ${TABLE}.ORDERSTATUS ;;
  }

  dimension: productdesc1 {
    type: string
    sql: ${TABLE}.PRODUCTDESC1 ;;
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
    sql: case WHEN ${TABLE}.Region!='META' THEN ${TABLE}.Region END ;;
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

  dimension: vendor {
    type: string
    sql: ${TABLE}.Vendor ;;
  }

  dimension: vendorkey {
    type: number
    sql: ${TABLE}.VENDORKEY ;;
  }

  dimension: vendornbr {
    type: string
    sql: ${TABLE}.VENDORNBR ;;
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

  measure: order_distinct_count {
    type: count_distinct
    label: "# Orders"
    sql: concat(${TABLE}.COMPANYCD,${TABLE}.ORDERNBR,${TABLE}.ENTRYDT) ;;
    drill_fields: [entrymethod,termidcd,custname,category1,extendedsales]
    #value_format: "[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0.00"
    html: @{big_number_format} ;;
  }

  measure: customer_distinct_count_concat {
    type: count_distinct
    sql:concat(${TABLE}.COMPANYCD,${TABLE}.MASTERBRCUSTNBR)  ;;
    #drill_fields: [detail*]
    #value_format: "[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0.00"
    html: @{big_number_format} ;;

  }

  measure: customer_distinct_count_concat_deno {
    type: count_distinct
    sql:concat(${TABLE}.COMPANYCD,${TABLE}.MASTERBRCUSTNBR)  ;;
    #drill_fields: [detail*]
    #value_format: "[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0.00"
    html: @{big_number_format} ;;

  }

  measure: count {
    type: count
    drill_fields: [entrymethod,termidcd,custname,category1,extendedsales]
    #value_format: "[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0.00"
    html: @{big_number_format} ;;
  }

  measure: total_extendedsales {
    type: sum
    label: "Revenue"
    sql: ${extendedsales}*${multiplybyforusd} ;;
    #value_format_name: decimal_0
    #value_format: "[>=1000000]$0.00,,\"M\";[>=1000]$0.00,\"K\";$0.00"
    #drill_fields: [detail_revenue*]
    drill_fields: [detail*]
    #value_format_name: "0.000,,,\"B\""
    html: @{big_money_format} ;;
  }

  #measure: total_extendedsales_by_web {
  #  type: sum
  #  sql: case when ${channel}='WEB' then ${extendedsales}*${multiplybyforusd} else 0 end;;
  #  drill_fields: [detail*]
  #  html: @{big_money_format} ;;
  #}


  measure: total_extendedsales_full {
    type: sum
    label: "Revenue Full"
    sql: ${extendedsales}*${multiplybyforusd} ;;
    #value_format_name: decimal_0
    #value_format: "[>=1000000]$0.00,,\"M\";[>=1000]$0.00,\"K\";$0.00"
    drill_fields: [detail*]
    #value_format_name: usd_0
    html: @{big_number_format} ;;
  }

  dimension: total_extendedsales_drill {
    label: "Revenue"
    hidden: yes
    type: number
    sql: ${TABLE}.EXTENDEDSALES*${multiplybyforusd} ;;
    value_format_name: usd
  }

  measure: total_qtyshipped {
    type: sum
    sql: ${qtyshipped} ;;
    #value_format: "[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0.00"
    html: @{big_number_format} ;;
  }

 # measure: companycd_count{
  #  type: count_distinct
  #  sql: ${companycd} ;;
  #}
  #measure: masterbrcustnbr_count{
  #  type: count_distinct
  #  sql: ${masterbrcustnbr} ;;
  #}

  measure: customer_count{
    type: count_distinct
    sql: ${channel} ;;
    drill_fields: [detailCustomer*]
  }

  measure: company_count {
    type: count_distinct
    sql: concat(${TABLE}.COMPANYCD,${TABLE}.MASTERBRCUSTNBR) ;;
    html: @{big_number_format} ;;
  }

  measure: company_count_distinct {
    type: count_distinct
    sql: concat(${TABLE}.COMPANYCD,${TABLE}.MASTERBRCUSTNBR)  ;;
    html: @{big_number_format} ;;
  }

  measure: distinct_count_vendornbr {
    label: "Total # Vendors Purchased"
    type: count_distinct
    sql: ${vendornbr}  ;;
    html: @{big_number_format} ;;
  }

  measure: distinct_count_companySKU {
    label: "Total # SKUs Purchased"
    type: count_distinct
    sql: concat(${companycd},${sku})  ;;
    html: @{big_number_format} ;;
  }

  measure: distinct_count_category1 {
    type: count_distinct
    label: "Total # Categories Purchased "
    sql: ${category1}  ;;
    html: @{big_number_format} ;;
  }

  measure: resellers_denom {
    type: count_distinct
    label : " Resellers Denominator"
    sql: concat(${companycd},${masterbrcustnbr})  ;;
    html: @{big_number_format} ;;
  }

  set:detail {
    fields: [entrymethod,termidcd,custname,category1,extendedsales]
  }
  set:detail_revenue {
    fields: [fisyearid,fisquartername,fismonthofyear,fisweekid,region,country,masterbrcustnbr,custname,total_extendedsales_drill]
  }

  set:detailCustomer {
    fields: [companycd,masterbrcustnbr,channel]
  }
}
