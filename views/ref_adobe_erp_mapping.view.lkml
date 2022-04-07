# The name of this view in Looker is "Ref Adobe Erp Mapping"
view: ref_adobe_erp_mapping {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ODSPROD.REF_ADOBE_ERP_MAPPING`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Adobe Country Name" in Explore.

  dimension: adobe_country_name {
    type: string
    sql: ${TABLE}.Adobe_CountryName ;;
  }
  dimension: ERP_region {
    type: string
    sql: ${TABLE}.ERP_Region ;;
  }
  dimension: adobe_last2_ingram_reseller_cc {
    type: string
    sql: ${TABLE}.Adobe_Last2_Ingram_Reseller_CC ;;
  }

  dimension: erp_country_code {
    type: string
    sql: ${TABLE}.ERP_Country_Code ;;
  }

  dimension: erp_country_name {
    type: string
    sql: ${TABLE}.ERP_Country_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [erp_country_name, adobe_country_name]
  }
}
