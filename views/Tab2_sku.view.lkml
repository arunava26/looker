view: tab2_sku {
  derived_table: {
    sql: SELECT
      CASE WHEN ENTRYMETHOD = 'L' and TERMIDCD in ('WEBA','WEBO','LU6G','WEB2','HERM','WEBL')
      and BRANCHCUSTOMERNBR !='16' THEN 'WEB'
      WHEN ENTRYMETHOD = 'ZWEB' and BRANCHCUSTOMERNBR !='16' THEN 'WEB'
      WHEN TERMIDCD = 'VENP' and BRANCHCUSTOMERNBR !='16' THEN 'Vendor Portals'
      WHEN ENTRYMETHOD = 'O' and BRANCHCUSTOMERNBR !='16' THEN 'EDI'
      WHEN ENTRYMETHOD = 'L' and TERMIDCD in ('BTCH') and BRANCHCUSTOMERNBR !='16'
      THEN 'EDI'
      WHEN ENTRYMETHOD = 'ZEDI' and BRANCHCUSTOMERNBR !='16' THEN 'EDI'
      WHEN ENTRYMETHOD = 'L' and TERMIDCD in ('WEBX','LU6X') and BRANCHCUSTOMERNBR !='16'
      THEN 'XML'
      WHEN ENTRYMETHOD = 'ZXML' and BRANCHCUSTOMERNBR !='16' THEN 'XML'
      WHEN ENTRYMETHOD = 'L' and TERMIDCD in ('WEBS') and BRANCHCUSTOMERNBR !='16' THEN 'API'
      WHEN TERMIDCD = 'G360' and BRANCHCUSTOMERNBR !='16' THEN 'Manual Quote to Order'
      ELSE 'Manual Entry'
      END
      AS channel,
       concat( COMPANYCD,ORDERNBR,DATE(ENTRYDT)) as conact_company_code , count(SKU) as order_count ,

      ( SELECT COUNT(DISTINCT CONCAT( COMPANYCD,ORDERNBR,DATE(ENTRYDT))) as company_code from `imsandboxpoc2.ODS_PROD.HI_INVOICELINE_ODS_BACKUP`) as company_code_deno
      from `imsandboxpoc2.ODS_PROD.HI_INVOICELINE_ODS_BACKUP`
      group by 1,2
      having order_count = 1
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  measure: conact_company_code {
    type: count_distinct
    sql: ${TABLE}.conact_company_code ;;
  }

  dimension: order_count {
    type: number
    sql: ${TABLE}.order_count ;;
  }

  dimension: company_code_deno {
    type: number
    sql: ${TABLE}.company_code_deno ;;
  }

  set: detail {
    fields: [channel, conact_company_code, order_count, company_code_deno]
  }
}
