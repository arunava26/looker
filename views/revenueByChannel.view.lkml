view: revenueByChannel {
  derived_table: {
    sql: select
      channel, delta_percentage,
      CASE when delta_percentage <= -3 then "-3%"
      when delta_percentage between -3 and 3 then "-3% to +3%"
      when delta_percentage >= 3 then "+3%" end as category
      from
      (
      select a.channel, a.revenue,b.revenue,b.revenue-a.revenue as diff,
      round(((b.revenue-a.revenue)/a.revenue) *100,2) as delta_percentage,
      concat(a.fisyearid,'/',b.fisyearid) as bucket
      from
      (
      (SELECT CASE WHEN entrymethod = 'L' and termidcd in ('WEBA','WEBO','LU6G','WEB2','HERM','WEBL') and branchcustomernbr !='16' THEN 'WEB'
      WHEN entrymethod = 'ZWEB' and branchcustomernbr !='16' THEN 'WEB'
      WHEN termidcd = 'VENP' and branchcustomernbr !='16' THEN 'Vendor Portals'
      WHEN entrymethod = 'O' and branchcustomernbr !='16' THEN 'EDI'
      WHEN entrymethod = 'L' and termidcd in ('BTCH') and branchcustomernbr !='16' THEN 'EDI'
      WHEN entrymethod = 'ZEDI' and branchcustomernbr !='16' THEN 'EDI'
      WHEN entrymethod = 'L' and termidcd in ('WEBX','LU6X') and branchcustomernbr !='16' THEN 'XML'
      WHEN entrymethod = 'ZXML' and branchcustomernbr !='16' THEN 'XML'
      WHEN entrymethod = 'L' and termidcd in ('WEBS') and branchcustomernbr !='16' THEN 'API'
      WHEN termidcd = 'G360' and branchcustomernbr !='16' THEN 'Manual Quote to Order'
      ELSE 'Manual Entry' end as channel,
      fisyearid , sum(extendedsales*multiplybyforusd) as revenue
      FROM `imsandboxpoc2.ODS_PROD.HI_INVOICELINE`
      where fisyearid in(2021,2020)
      group by channel,fisyearid
      order by channel
      LIMIT 1000) b
      join
      (SELECT CASE WHEN entrymethod = 'L' and termidcd in ('WEBA','WEBO','LU6G','WEB2','HERM','WEBL') and branchcustomernbr !='16' THEN 'WEB'
      WHEN entrymethod = 'ZWEB' and branchcustomernbr !='16' THEN 'WEB'
      WHEN termidcd = 'VENP' and branchcustomernbr !='16' THEN 'Vendor Portals'
      WHEN entrymethod = 'O' and branchcustomernbr !='16' THEN 'EDI'
      WHEN entrymethod = 'L' and termidcd in ('BTCH') and branchcustomernbr !='16' THEN 'EDI'
      WHEN entrymethod = 'ZEDI' and branchcustomernbr !='16' THEN 'EDI'
      WHEN entrymethod = 'L' and termidcd in ('WEBX','LU6X') and branchcustomernbr !='16' THEN 'XML'
      WHEN entrymethod = 'ZXML' and branchcustomernbr !='16' THEN 'XML'
      WHEN entrymethod = 'L' and termidcd in ('WEBS') and branchcustomernbr !='16' THEN 'API'
      WHEN termidcd = 'G360' and branchcustomernbr !='16' THEN 'Manual Quote to Order'
      ELSE 'Manual Entry' end as channel,
      fisyearid , sum(extendedsales*multiplybyforusd) as revenue
      FROM `imsandboxpoc2.ODS_PROD.HI_INVOICELINE`
      where fisyearid in(2021,2020)
      group by channel,fisyearid
      order by channel
      LIMIT 1000) a on a.channel = b.channel and cast(a.fisyearid as INT64)+1 = CAST(b.fisyearid as INT64)
      )
      )
      group by channel, delta_percentage
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

  measure: delta_percentage {
    type: sum
    sql: ${TABLE}.delta_percentage ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  set: detail {
    fields: [channel, delta_percentage, category]
  }
}
