# The name of this view in Looker is "Dw Adobe Addtocartlocation"
view: dw_adobe_addtocartlocation {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `imsandboxpoc2.ODS_PROD.DW_ADOBE_ADDTOCARTLOCATION_BKP`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Add to Cart Location" in Explore.

  dimension: add_to_cart_location {
    type: string
    sql: ${TABLE}.ADD_TO_CART_LOCATION ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: dates {
    type: string
    sql: ${TABLE}.DATES ;;
  }
  dimension: dates_yyyy_mm {
    label:"Year Month"
    type: string
    sql: CONCAT(EXTRACT (YEAR FROM SAFE_CAST(${TABLE}.DATES AS DATE FORMAT 'MONTH DD, YYYY')),'-',EXTRACT (MONTH FROM SAFE_CAST(${TABLE}.DATES AS DATE FORMAT 'MONTH DD, YYYY')))  ;;
  }

  dimension: dates_yyyy_ww {
    label:"Year Week"
    type: string
    sql: CONCAT(EXTRACT (YEAR FROM SAFE_CAST(${TABLE}.DATES AS DATE FORMAT 'MONTH DD, YYYY')),'-',EXTRACT (WEEK FROM SAFE_CAST(${TABLE}.DATES AS DATE FORMAT 'MONTH DD, YYYY')))  ;;
  }

  dimension_group: dates_format {
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
    sql: TIMESTAMP(SAFE_CAST(${dates} AS DATE FORMAT 'MONTH DD, YYYY')) ;;
  }

  dimension: year{
    type: string
    sql: FORMAT_DATE('%Y', PARSE_DATE('%B %d, %Y', ${TABLE}.dates)) ;;
  }

  dimension: ingram_reseller_id {
    type: string
    sql: ${TABLE}.INGRAM_RESELLER_ID ;;
  }

  dimension: ingram_reseller_id_cc {
    type: string
    sql: ${TABLE}.INGRAM_RESELLER_ID_CC ;;
  }

  dimension: page_type {
    type: string
    sql: ${TABLE}.PAGE_TYPE ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.REVENUE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_revenue {
    type: sum
    sql: ${revenue} ;;
  }

  measure: incremental_total_revenue {
    type: sum
    sql: case when ${add_to_cart_location} in ('Favorite Products_List_AddToCart'
            ,'Favorite Products_SearchResults_AddToCart'
            ,'Home_RecentlyViewed_AddToCart'
            ,'HomePageZone_BuyItAgain_AddToCart'
            ,'HomePageZone_Promotions_AddToCart'
            ,'HomePageZone_RecommendedProducts_AddToCart'
            ,'HomePageZone_TrendingProducts_AddToCart'
            ,'HomePageZone_YouMayAlsoLike_AddToCart'
            ,'Product Detail_RecommendedProducts_AddToCart'
            ,'ProductDetailsPageZone_Accessories_AddToCart'
            ,'ProductDetailsPageZone_PeopleAlsoBought_AddToCart'
            ,'ProductDetailsPageZone_RecentlyViewedProducts_AddToCart'
            ,'ProductDetailsPageZone_SimilarProducts_AddToCart'
            ,'ProductDetailsPageZone_YouMayAlsoLike_AddToCart'
            ,'Search Results_RecentlyViewed_AddToCart'
            ,'SearchPageZone_RecentlyViewedProducts_AddToCart'
            ,'SearchPageZone_RecommendedProducts_AddToCart'
            ,'SearchPageZone_SponsoredProductPlacement_AddToCart'
            ,'SearchPageZone_YouMayAlsoLike_AddToCart'
            ,'Trending Products_KenticoRule_AddToCart'
            ,'WarrantyCarousel_AddToCart') or ${add_to_cart_location} like '%KENTICO%' then ${revenue} end ;;
        html: @{big_number_format} ;;
  }

  measure: average_revenue {
    type: average
    sql: ${revenue} ;;
  }



  dimension: visitor_id {
    type: string
    sql: ${TABLE}.VISITOR_ID ;;
  }

  dimension: visits {
    type: number
    sql: ${TABLE}.VISITS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
