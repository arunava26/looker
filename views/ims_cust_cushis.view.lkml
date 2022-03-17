# The name of this view in Looker is "Ims Cust Cushis"
view: ims_cust_cushis {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODS_PROD.IMS_CUST_CUSHIS`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Adj Cost Prev Year" in Explore.

  dimension: adj_cost_prev_year {
    type: number
    sql: ${TABLE}.ADJ_COST_PREV_YEAR ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_adj_cost_prev_year {
    type: sum
    sql: ${adj_cost_prev_year} ;;
  }

  measure: average_adj_cost_prev_year {
    type: average
    sql: ${adj_cost_prev_year} ;;
  }

  dimension: br_nbr {
    type: string
    sql: ${TABLE}.BR_NBR ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.COMPANY ;;
  }

  dimension: cost_prev_year {
    type: number
    sql: ${TABLE}.COST_PREV_YEAR ;;
  }

  dimension: cr_date_1 {
    type: number
    sql: ${TABLE}.CR_DATE_1 ;;
  }

  dimension: cr_date_2 {
    type: number
    sql: ${TABLE}.CR_DATE_2 ;;
  }

  dimension: cr_date_3 {
    type: number
    sql: ${TABLE}.CR_DATE_3 ;;
  }

  dimension: cr_limit_1 {
    type: number
    sql: ${TABLE}.CR_LIMIT_1 ;;
  }

  dimension: cr_limit_2 {
    type: number
    sql: ${TABLE}.CR_LIMIT_2 ;;
  }

  dimension: cr_limit_3 {
    type: number
    sql: ${TABLE}.CR_LIMIT_3 ;;
  }

  dimension: cuh_br_nbr {
    type: string
    sql: ${TABLE}.CUH_BR_NBR ;;
  }

  dimension: cust_nbr {
    type: string
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: date_last_sale {
    type: number
    sql: ${TABLE}.DATE_LAST_SALE ;;
  }

  dimension: imagine_inc_to_dte {
    type: number
    sql: ${TABLE}.IMAGINE_INC_TO_DTE ;;
  }

  dimension: imagine_per_to_dte {
    type: number
    sql: ${TABLE}.IMAGINE_PER_TO_DTE ;;
  }

  dimension: mtd_adj_cost {
    type: number
    sql: ${TABLE}.MTD_ADJ_COST ;;
  }

  dimension: mtd_cost {
    type: number
    sql: ${TABLE}.MTD_COST ;;
  }

  dimension: mtd_freight_adj {
    type: number
    sql: ${TABLE}.MTD_FREIGHT_ADJ ;;
  }

  dimension: mtd_ord_placed {
    type: number
    sql: ${TABLE}.MTD_ORD_PLACED ;;
  }

  dimension: mtd_price_adj {
    type: number
    sql: ${TABLE}.MTD_PRICE_ADJ ;;
  }

  dimension: mtd_sales {
    type: number
    sql: ${TABLE}.MTD_SALES ;;
  }

  dimension: mtd_sra_adj {
    type: number
    sql: ${TABLE}.MTD_SRA_ADJ ;;
  }

  dimension: mtd_total_ord {
    type: number
    sql: ${TABLE}.MTD_TOTAL_ORD ;;
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

  dimension: ptc_adj_cost_prev_year {
    type: number
    sql: ${TABLE}.PTC_ADJ_COST_PREV_YEAR ;;
  }

  dimension: ptc_cost_prev_year {
    type: number
    sql: ${TABLE}.PTC_COST_PREV_YEAR ;;
  }

  dimension: ptc_mtd_adj_cost {
    type: number
    sql: ${TABLE}.PTC_MTD_ADJ_COST ;;
  }

  dimension: ptc_mtd_cost {
    type: number
    sql: ${TABLE}.PTC_MTD_COST ;;
  }

  dimension: ptc_mtd_sales {
    type: number
    sql: ${TABLE}.PTC_MTD_SALES ;;
  }

  dimension: ptc_sales_moy_1 {
    type: number
    sql: ${TABLE}.PTC_SALES_MOY_1 ;;
  }

  dimension: ptc_sales_moy_2 {
    type: number
    sql: ${TABLE}.PTC_SALES_MOY_2 ;;
  }

  dimension: ptc_sales_moy_3 {
    type: number
    sql: ${TABLE}.PTC_SALES_MOY_3 ;;
  }

  dimension: ptc_sales_prev_year {
    type: number
    sql: ${TABLE}.PTC_SALES_PREV_YEAR ;;
  }

  dimension: ptc_ytd_adj_cost {
    type: number
    sql: ${TABLE}.PTC_YTD_ADJ_COST ;;
  }

  dimension: ptc_ytd_cost {
    type: number
    sql: ${TABLE}.PTC_YTD_COST ;;
  }

  dimension: ptc_ytd_sales {
    type: number
    sql: ${TABLE}.PTC_YTD_SALES ;;
  }

  dimension: qtd_balance {
    type: number
    sql: ${TABLE}.QTD_BALANCE ;;
  }

  dimension: qtd_gross_sales {
    type: number
    sql: ${TABLE}.QTD_GROSS_SALES ;;
  }

  dimension: qtr1_dso {
    type: number
    sql: ${TABLE}.QTR1_DSO ;;
  }

  dimension: qtr2_dso {
    type: number
    sql: ${TABLE}.QTR2_DSO ;;
  }

  dimension: qtr3_dso {
    type: number
    sql: ${TABLE}.QTR3_DSO ;;
  }

  dimension: qtr4_dso {
    type: number
    sql: ${TABLE}.QTR4_DSO ;;
  }

  dimension: qtr5_dso {
    type: number
    sql: ${TABLE}.QTR5_DSO ;;
  }

  dimension: sales_moy_1 {
    type: number
    sql: ${TABLE}.SALES_MOY_1 ;;
  }

  dimension: sales_moy_2 {
    type: number
    sql: ${TABLE}.SALES_MOY_2 ;;
  }

  dimension: sales_moy_3 {
    type: number
    sql: ${TABLE}.SALES_MOY_3 ;;
  }

  dimension: sales_prev_year {
    type: number
    sql: ${TABLE}.SALES_PREV_YEAR ;;
  }

  dimension: ytd_adj_cost {
    type: number
    sql: ${TABLE}.YTD_ADJ_COST ;;
  }

  dimension: ytd_cost {
    type: number
    sql: ${TABLE}.YTD_COST ;;
  }

  dimension: ytd_freight_adj {
    type: number
    sql: ${TABLE}.YTD_FREIGHT_ADJ ;;
  }

  dimension: ytd_ord_placed {
    type: number
    sql: ${TABLE}.YTD_ORD_PLACED ;;
  }

  dimension: ytd_price_adj {
    type: number
    sql: ${TABLE}.YTD_PRICE_ADJ ;;
  }

  dimension: ytd_sales {
    type: number
    sql: ${TABLE}.YTD_SALES ;;
  }

  dimension: ytd_sra_adj {
    type: number
    sql: ${TABLE}.YTD_SRA_ADJ ;;
  }

  dimension: ytd_total_ord {
    type: number
    sql: ${TABLE}.YTD_TOTAL_ORD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
