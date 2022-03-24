- dashboard: cep_performance
  title: TEST1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: Ingram KPI Dashboard
  elements:
  - title: Revenue By Channel
    name: Revenue By Channel
    model: ingram_ods_prod
    explore: hi_invoiceline_sample
    type: looker_pie
    fields: [hi_invoiceline_sample.channel, hi_invoiceline_sample.total_extendedsales]
    sorts: [hi_invoiceline_sample.channel]
    limit: 500
    value_labels: legend
    label_type: labPer
    series_colors:
      CLOUD NON-RECURRING: "#A8A116"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Fiscal Month: hi_invoiceline_sample.fismonthofyear
      Country: hi_invoiceline_sample.country
      Region: hi_invoiceline_sample.region
      Fiscal Quarter: hi_invoiceline_sample.fisquartername
      Fiscal Year: hi_invoiceline_sample.fisyearid
    row: 2
    col: 0
    width: 7
    height: 8
  - title: Order By Channel
    name: Order By Channel
    model: ingram_ods_prod
    explore: hi_invoiceline_sample
    type: looker_pie
    fields: [hi_invoiceline_sample.channel, hi_invoiceline_sample.order_distinct_count]
    sorts: [hi_invoiceline_sample.channel]
    limit: 500
    value_labels: legend
    label_type: labPer
    series_colors:
      Manual Entry: "#F9AB00"
      EDI: "#E8710A"
      XML: "#079c98"
      Manual Quote to Order: "#7CB342"
      Vendor Portals: "#9334E6"
      WEB: "#80868B"
      API: "#1A73E8"
      CLOUD NON-RECURRING: "#A8A116"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Fiscal Month: hi_invoiceline_sample.fismonthofyear
      Country: hi_invoiceline_sample.country
      Region: hi_invoiceline_sample.region
      Fiscal Quarter: hi_invoiceline_sample.fisquartername
      Fiscal Year: hi_invoiceline_sample.fisyearid
    row: 10
    col: 0
    width: 7
    height: 8
  - title: Web Revenue
    name: Web Revenue
    model: ingram_ods_prod
    explore: hi_invoiceline_sample
    type: single_value
    fields: [hi_invoiceline_sample.total_extendedsales]
    filters:
      hi_invoiceline_sample.channel: WEB
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    single_value_title: Web Revenue
    value_format: ''
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen:
      Fiscal Month: hi_invoiceline_sample.fismonthofyear
      Country: hi_invoiceline_sample.country
      Region: hi_invoiceline_sample.region
      Fiscal Quarter: hi_invoiceline_sample.fisquartername
      Fiscal Year: hi_invoiceline_sample.fisyearid
    row: 2
    col: 7
    width: 4
    height: 8
  - title: Web Orders
    name: Web Orders
    model: ingram_ods_prod
    explore: hi_invoiceline_sample
    type: single_value
    fields: [hi_invoiceline_sample.order_distinct_count]
    filters:
      hi_invoiceline_sample.channel: WEB
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    series_types: {}
    defaults_version: 1
    listen:
      Fiscal Month: hi_invoiceline_sample.fismonthofyear
      Country: hi_invoiceline_sample.country
      Region: hi_invoiceline_sample.region
      Fiscal Quarter: hi_invoiceline_sample.fisquartername
      Fiscal Year: hi_invoiceline_sample.fisyearid
    row: 10
    col: 7
    width: 4
    height: 8
  - name: '<div style="border-radius: 10px; padding: 10px; background: #2685BF; height:
      60px;"> <nav style="font-size: 18px;">   <img style="padding: 5px; float: left;
      height: 40px;" src="https://logodixcom/logo/2199077png"/>   <a style="color:
      #f2f2f2; padding: 0'
    type: text
    title_text: '<div style="border-radius: 10px; padding: 10px; background: #2685BF;
      height: 60px;"> <nav style="font-size: 18px;">   <img style="padding: 5px; float:
      left; height: 40px;" src="https://logodix.com/logo/2199077.png"/>   <a style="color:
      #f2f2f2; padding: 0'
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Exit Point
    name: Exit Point
    model: ingram_ods_prod
    explore: dw_adobe_exit
    type: looker_bar
    fields: [dw_adobe_exit.exit_pages, dw_adobe_exit.total_visits]
    sorts: [dw_adobe_exit.total_visits desc]
    limit: 5
    dynamic_fields: [{category: table_calculation, expression: "${dw_adobe_exit.total_visits}/sum(${dw_adobe_exit.total_visits})",
        label: Percentage of Visits, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: percentage_of_visits, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [dw_adobe_exit.total_visits]
    series_types: {}
    note_state: collapsed
    note_display: above
    note_text: What Part of the Journey Do Customers Exit Our Site?
    listen:
      Country: dw_adobe_exit.country
      Fiscal Year: dw_adobe_exit.year
    row: 27
    col: 13
    width: 11
    height: 7
  - title: Customer Buying Through Web
    name: Customer Buying Through Web
    model: ingram_ods_prod
    explore: hi_invoiceline_sample
    type: single_value
    fields: [hi_invoiceline_sample.channel, hi_invoiceline_sample.customer_distinct_count_concat]
    filters:
      hi_invoiceline_sample.extendedsales: ">0"
      hi_invoiceline_sample.channel: WEB
    sorts: [hi_invoiceline_sample.channel]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${hi_invoiceline_sample.customer_count}/${hi_invoiceline_sample.customer_count_value}",
        label: Customers Buying Online Percentage, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: customers_buying_online_percentage,
        _type_hint: number, is_disabled: true}, {category: table_calculation, expression: "${hi_invoiceline_sample.count}/sum(${hi_invoiceline_sample.count})",
        label: Customers Buying Online Percentage, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: customers_buying_online_percentage_1,
        _type_hint: number, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [hi_invoiceline_sample.channel]
    listen:
      Fiscal Month: hi_invoiceline_sample.fismonthofyear
      Country: hi_invoiceline_sample.country
      Region: hi_invoiceline_sample.region
      Fiscal Quarter: hi_invoiceline_sample.fisquartername
      Fiscal Year: hi_invoiceline_sample.fisyearid
    row: 10
    col: 13
    width: 4
    height: 8
  - title: Traffic
    name: Traffic
    model: ingram_ods_prod
    explore: dw_adobe_visits
    type: looker_scatter
    fields: [dw_adobe_visits.Visitor_sum, dw_adobe_visits.count_distinct_no_of_customer,
      dw_adobe_visits.dates_yyyy_mm]
    sorts: [dw_adobe_visits.dates_yyyy_mm desc]
    limit: 13
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'sum(${dw_adobe_visits.count_distinct_no_of_customer})',
        label: customer, value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: customer, _type_hint: number, is_disabled: true}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    hidden_series: []
    series_types:
      dw_adobe_visits.count_distinct_no_of_customer: column
      dw_adobe_visits.Visitor_sum: line
    series_colors:
      dw_adobe_visits.count_distinct_no_of_customer: "#1A73E8"
      dw_adobe_visits.Visitor_sum: "#E52592"
    series_labels:
      dw_adobe_visits.count_distinct_no_of_customer: "# Customers"
      dw_adobe_visits.Visitor_sum: "# Visits"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Country: dw_adobe_visits.country
      Fiscal Year: dw_adobe_visits.year
    row: 18
    col: 4
    width: 7
    height: 9
  - title: Incremental Sales
    name: Incremental Sales
    model: ingram_ods_prod
    explore: dw_adobe_addtocartlocation
    type: looker_line
    fields: [dw_adobe_addtocartlocation.incremental_total_revenue, dw_adobe_addtocartlocation.dates_yyyy_mm]
    filters:
      dw_adobe_addtocartlocation.dates_format_month: 13 months
    sorts: [dw_adobe_addtocartlocation.dates_yyyy_mm desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: above
    note_text: Sales from Product Recommendations
    listen:
      Country: dw_adobe_addtocartlocation.country
      Fiscal Year: dw_adobe_addtocartlocation.year
    row: 27
    col: 4
    width: 7
    height: 7
  - title: Web Sales Source
    name: Web Sales Source
    model: ingram_ods_prod
    explore: dw_adobe_addtocartlocation
    type: looker_bar
    fields: [dw_adobe_addtocartlocation.Sales_Source, dw_adobe_addtocartlocation.sum_revenue]
    filters:
      dw_adobe_addtocartlocation.add_to_cart_location: -undefined,-"''",-EMPTY
      dw_adobe_addtocartlocation.revenue: ">0"
    sorts: [dw_adobe_addtocartlocation.sum_revenue desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${dw_adobe_addtocartlocation.sum_revenue}/sum(${dw_adobe_addtocartlocation.sum_revenue})",
        label: "% of Sales", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: of_sales, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [dw_adobe_addtocartlocation.sum_revenue]
    note_state: collapsed
    note_display: above
    note_text: What Function Do Customers Add Products to Cart?
    listen:
      Country: dw_adobe_addtocartlocation.country
      Fiscal Year: dw_adobe_addtocartlocation.year
    row: 18
    col: 13
    width: 11
    height: 9
  - title: Incremental Sales
    name: Incremental Sales (2)
    model: ingram_ods_prod
    explore: dw_adobe_addtocartlocation
    type: single_value
    fields: [dw_adobe_addtocartlocation.dates_yyyy_mm, dw_adobe_addtocartlocation.incremental_total_revenue_matrix]
    filters: {}
    sorts: [dw_adobe_addtocartlocation.incremental_total_revenue_matrix desc]
    limit: 13
    dynamic_fields: [{category: table_calculation, expression: 'sum(${dw_adobe_addtocartlocation.incremental_total_revenue_matrix})',
        label: Incremental Sales, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: incremental_sales, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    value_format: "$#,##0"
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    hidden_fields: [dw_adobe_addtocartlocation.incremental_total_revenue_matrix]
    note_state: collapsed
    note_display: above
    note_text: Sales From Product Recommendations
    listen:
      Country: dw_adobe_addtocartlocation.country
      Fiscal Year: dw_adobe_addtocartlocation.year
    row: 27
    col: 0
    width: 4
    height: 7
  - title: Conversion % Offline
    name: Conversion % Offline
    model: ingram_ods_prod
    explore: offline_matrix
    type: single_value
    fields: [offline_matrix.orders_related_to_web_search_numerator, offline_matrix.total_orders_denominator]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${offline_matrix.offline_conversion_rate}",
        label: Conversion % Offline, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: conversion_offline, _type_hint: number,
        is_disabled: true}, {category: table_calculation, expression: "${offline_matrix.orders_related_to_web_search_numerator}/${offline_matrix.total_orders_denominator}",
        label: Conversion % Offline, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: conversion_offline_1, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    defaults_version: 1
    hidden_fields: [offline_matrix.total_orders_denominator, offline_matrix.orders_related_to_web_search_numerator]
    note_state: collapsed
    note_display: above
    note_text: How Often Does a Product Viewed Online Result in a Sale, Any Channel,
      within 2 Days
    listen:
      Country: offline_matrix.country
      Fiscal Year: offline_matrix.fiscal_year
    row: 6
    col: 13
    width: 5
    height: 4
  - title: Conversion Rate
    name: Conversion Rate
    model: ingram_ods_prod
    explore: offline_online_chart
    type: looker_line
    fields: [offline_online_chart.fiscal_year_mm, offline_online_chart.orders_related_to_web_search_numerator,
      offline_online_chart.total_orders_denominator, offline_online_chart.orderid,
      offline_online_chart.visitor]
    sorts: [offline_online_chart.fiscal_year_mm desc]
    limit: 13
    dynamic_fields: [{category: table_calculation, expression: "${offline_online_chart.orders_related_to_web_search_numerator}/${offline_online_chart.total_orders_denominator}",
        label: Offline, value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        table_calculation: offline, _type_hint: number}, {category: table_calculation,
        expression: "${offline_online_chart.orderid}/${offline_online_chart.visitor}",
        label: Online, value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        table_calculation: online, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    series_types: {}
    series_colors:
      online: "#E52592"
    hidden_fields: [offline_online_chart.visitor, offline_online_chart.orderid, offline_online_chart.total_orders_denominator,
      offline_online_chart.orders_related_to_web_search_numerator]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Country: offline_online_chart.country
      Region: offline_online_chart.region
      Fiscal Year: offline_online_chart.fiscal_year
    row: 2
    col: 18
    width: 6
    height: 8
  - title: Visits
    name: Visits
    model: ingram_ods_prod
    explore: visit_matrix
    type: single_value
    fields: [visit_matrix.total_visits]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Total Visits to IM Online
    listen:
      Country: visit_matrix.country
      Fiscal Year: visit_matrix.fiscal_year
    row: 23
    col: 0
    width: 4
    height: 4
  - title: Customers
    name: Customers
    model: ingram_ods_prod
    explore: customer_matrix
    type: single_value
    fields: [customer_matrix.distinct_count_customer]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: above
    note_text: Customers Visiting IM Online
    listen:
      Country: customer_matrix.country
      Region: customer_matrix.erp_region
      Fiscal Year: customer_matrix.year
    row: 18
    col: 0
    width: 4
    height: 5
  - title: Conversion % Online
    name: Conversion % Online
    model: ingram_ods_prod
    explore: offline_online_chart
    type: single_value
    fields: [offline_online_chart.orderid, offline_online_chart.visitor]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${offline_online_chart.orderid}/${offline_online_chart.visitor}",
        label: Online, value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        table_calculation: online, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [offline_online_chart.orderid, offline_online_chart.visitor]
    note_state: collapsed
    note_display: above
    note_text: How Often Does A Web Visit Result in a Sale
    listen:
      Country: offline_online_chart.country
      Fiscal Year: offline_online_chart.fiscal_year
    row: 2
    col: 13
    width: 5
    height: 4
  - name: Customers Buying by Channel
    title: Customers Buying by Channel
    merged_queries:
    - model: ingram_ods_prod
      explore: hi_invoiceline_sample
      type: table
      fields: [hi_invoiceline_sample.channel, hi_invoiceline_sample.company_count]
      filters:
        hi_invoiceline_sample.region: ''
        hi_invoiceline_sample.fisyearid: ''
        hi_invoiceline_sample.fisquartername: ''
        hi_invoiceline_sample.fismonthofyear: ''
        hi_invoiceline_sample.country: ''
      sorts: [hi_invoiceline_sample.company_count desc]
      limit: 500
    - model: ingram_ods_prod
      explore: hi_invoiceline_sample
      type: table
      fields: [hi_invoiceline_sample.company_count_distinct]
      filters:
        hi_invoiceline_sample.region: ''
        hi_invoiceline_sample.country: ''
        hi_invoiceline_sample.fisyearid: ''
        hi_invoiceline_sample.fismonthofyear: ''
        hi_invoiceline_sample.fisquartername: ''
      limit: 500
      join_fields: []
    type: looker_bar
    hidden_fields: [hi_invoiceline_sample.company_count, hi_invoiceline_sample.company_count_distinct]
    series_types: {}
    dynamic_fields: [{category: table_calculation, expression: "${hi_invoiceline_sample.company_count}/${hi_invoiceline_sample.company_count_distinct}",
        label: Customers Buying Online Percentage, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: customers_buying_online_percentage,
        _type_hint: number}]
    listen:
    - Country: hi_invoiceline_sample.country
      Region: hi_invoiceline_sample.region
      Fiscal Quarter: hi_invoiceline_sample.fisquartername
      Fiscal Year: hi_invoiceline_sample.fisyearid
    - Country: hi_invoiceline_sample.country
      Region: hi_invoiceline_sample.region
      Fiscal Quarter: hi_invoiceline_sample.fisquartername
      Fiscal Year: hi_invoiceline_sample.fisyearid
    row: 10
    col: 17
    width: 7
    height: 8
  filters:
  - name: Region
    title: Region
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: ingram_ods_prod
    explore: hi_invoiceline_sample
    listens_to_filters: []
    field: hi_invoiceline_sample.region
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: ingram_ods_prod
    explore: hi_invoiceline_sample
    listens_to_filters: [Region]
    field: hi_invoiceline_sample.country
  - name: Fiscal Year
    title: Fiscal Year
    type: field_filter
    default_value: '2021'
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - '2018'
      - '2019'
      - '2020'
      - '2021'
      - '2022'
    model: ingram_ods_prod
    explore: hi_invoiceline_sample
    listens_to_filters: []
    field: hi_invoiceline_sample.fisyearid
  - name: Fiscal Quarter
    title: Fiscal Quarter
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - Q1
      - Q2
      - Q3
      - Q4
    model: ingram_ods_prod
    explore: hi_invoiceline_sample
    listens_to_filters: []
    field: hi_invoiceline_sample.fisquartername
  - name: Fiscal Month
    title: Fiscal Month
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - '1'
      - '2'
      - '3'
      - '4'
      - '5'
      - '6'
      - '7'
      - '8'
      - '9'
      - '10'
      - '11'
      - '12'
    model: ingram_ods_prod
    explore: hi_invoiceline_sample
    listens_to_filters: []
    field: hi_invoiceline_sample.fismonthofyear
