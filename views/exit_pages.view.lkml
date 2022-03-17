view: exit_pages {
  derived_table: {
    sql: SELECT distinct(EXIT_PAGES),sum(Visits)/(select sum(Visits) from `imsandboxpoc2.ODS_PROD.DW_ADOBE_EXIT` ) as exit_point_percentage FROM `imsandboxpoc2.ODS_PROD.DW_ADOBE_EXIT` GROUP BY  1 Order by exit_point_percentage desc
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: exit_pages {
    type: string
    sql: ${TABLE}.EXIT_PAGES ;;
  }

  measure: exit_point_percentage {
    type: sum
    sql: ${TABLE}.exit_point_percentage ;;
    value_format_name: decimal_3
  }

  set: detail {
    fields: [exit_pages, exit_point_percentage]
  }
}
