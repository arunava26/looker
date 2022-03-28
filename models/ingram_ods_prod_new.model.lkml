connection: "poc_03_13_2022"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

datagroup: ingram_ods_prod_new_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ingram_ods_prod_new_datagroup
# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
 explore: fact_invoiceline {
   join: dim_customer {
     relationship: many_to_one
     sql_on: ${fact_invoiceline.customerkey} = ${dim_customer.customerkey} ;;
   }

   join: dim_product {
     relationship: many_to_one
     sql_on: ${fact_invoiceline.productkey} = ${dim_product.productkey} ;;
   }
  join: dim_vendor {
    relationship: many_to_one
    sql_on: ${fact_invoiceline.vendorkey} = ${dim_vendor.vendorkey} ;;
  }
 }
