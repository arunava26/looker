# The name of this view in Looker is "Dw Adobe Add to Cart Location"
view: dw_adobe_add_to_cart_location_IM {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `imsandboxpoc2.ODS_PROD.DW_ADOBE_ADD_TO_CART_LOCATION`
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

  dimension: cart_additions {
    type: number
    sql: ${TABLE}.CART_ADDITIONS ;;
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

  dimension: revenue {
    type: number
    sql: ${TABLE}.REVENUE ;;
  }

  dimension: month {
    hidden: yes
    type: number
    sql: EXTRACT (MONTH FROM SAFE_CAST(${TABLE}.DATES AS DATE FORMAT 'MONTH DD, YYYY'))  ;;
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

  dimension: dates_yyyy_mm {
    label:"Year Month"
    type: string
    sql: CONCAT(EXTRACT (YEAR FROM SAFE_CAST(${TABLE}.DATES AS DATE FORMAT 'MONTH DD, YYYY')),'-',case when ${month}<10 then concat("0",cast(${month} as string)) else cast(${month} as string) end ) ;;
    #sql: CONCAT(EXTRACT (YEAR FROM SAFE_CAST(${TABLE}.DATES AS DATE FORMAT 'MONTH DD, YYYY')),'-',EXTRACT (MONTH FROM SAFE_CAST(${TABLE}.DATES AS DATE FORMAT 'MONTH DD, YYYY')))  ;;
  }

  dimension: Sales_Source {
    type: string
    label: "Page"
    sql: case when ${add_to_cart_location} like '%Search%' then 'Search Page'
              when ${add_to_cart_location} like '%Product%' then 'Product Details Page'
              when ${add_to_cart_location} like '%Bids%' then 'Special Bids Page'
              when ${add_to_cart_location} like '%Favorite%' then 'Favorite Products'
              when ${add_to_cart_location} like '%Home%' then 'Home Page'
              when ${add_to_cart_location} like '%Compare%' then 'Product Comparison'
              when ${add_to_cart_location} like '%Kentico%' then 'Kentico Ads'
              else 'Other' end;;
  }
  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  #measure: total_revenue {
  #  type: sum
  #  sql: ${revenue} ;;
  #}

  measure: average_revenue {
    type: average
    sql: ${revenue} ;;
  }

  dimension: site_name {
    type: string
    sql: ${TABLE}.SITE_NAME ;;
  }

  dimension: transactions {
    type: number
    sql: ${TABLE}.TRANSACTIONS ;;
  }

  dimension: visitor_id {
    type: string
    sql: ${TABLE}.VISITOR_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [site_name]
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
  measure: incremental_total_revenue_matrix {
    type: sum
    sql: case when ${add_to_cart_location} in ('Product Recommendations','RecentlyViewedProducts','RecommendedProducts','BuyItAgain','Accessories','YouMayAlsoLike','TopCategories','TrendingProducts','Promotions','PeopleAlsoBought','SimilarProducts')
        or ${add_to_cart_location} like '%RECOMMEND%'
        or ${add_to_cart_location} like '%ACCESSORIES%'
        or ${add_to_cart_location} like '%BUYITAGAIN%'
        or ${add_to_cart_location} like '%RecentlyViewed%'
        or ${add_to_cart_location} like '%WARRANTY%'
        or ${add_to_cart_location} like '%KENTICO%'
        or ${add_to_cart_location} like '%SPONSOR%'
        or ${add_to_cart_location} like '%SHOWCASE%'
        or ${add_to_cart_location} like '%TRENDING%'
        or ${add_to_cart_location} like '%PROMO%'
        or ${add_to_cart_location} like '%SIMILAR%' THEN ${revenue} END ;;
    html: @{big_number_format} ;;
  }
  measure: sum_revenue {
    label: "Total Revenue"
    type: sum
    sql: ${revenue} ;;
    html: @{big_money_format} ;;
  }
}
