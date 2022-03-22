# Define the database connection to be used for this model.
connection: "poc_03_13_2022"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: ingram_ods_prod_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ingram_ods_prod_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Ingram Ods Prod"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.


explore: customer_matrix {}

explore: customers_buying_by_channel {}
explore: offline_online_chart {}
explore: offline_matrix {}
explore: dw_adobe_addtocartlocation {}
explore: conversion_rate {}
explore: visit_matrix {}

explore: dw_adobe_visits {
  join: customer_hierarchy_dimention {
    view_label: "Customer Hierarchy Dimention"
    type: left_outer
    sql_on: ${dw_adobe_visits.ingram_reseller_id} = concat(${customer_hierarchy_dimention.op_co_cd},${customer_hierarchy_dimention.cust_nbr}) ;;
    relationship: one_to_many
  }
  join: dw_adobe_online_skus {
    type: left_outer
    sql_on: ${dw_adobe_visits.ingram_reseller_id} = ${dw_adobe_online_skus.ingram_reseller_id} ;;
    relationship: one_to_many
  }
  join: ref_adobe_erp_mapping {
    type: left_outer
    sql_on: ${dw_adobe_visits.country} =  ${ref_adobe_erp_mapping.adobe_country_name};;
    relationship: one_to_many
  }
}


explore: ar_open_iq {}
explore: traffic {}

explore: revenueByChannel {}
explore: exit_pages {}

explore: dw_adobe_exit {

}

explore: acop_bid_info {}

explore: db2_rslr_eu {}

explore: ar_paid {}

explore: date_dimention {}

explore: db2_acop_trk {}

explore: db2_rslr_eu_addr {}

explore: customer_hierarchy_dimention {}

explore: db2_rslr_eu_ctac {}

explore: db2_ww_company {}

explore: ims_ap_apshed {}

explore: ims_cust_cusadr {}

explore: ims_ap_apsdst {}

explore: hi_invoiceline_sample {}

explore: exchange_rate_dimention {}

explore: ims_cust_cusbrn {}

explore: ims_cust_cushedof {}

explore: ims_cust_cushis {}

explore: ims_cust_cushed {}

explore: ims_cust_cusmsc_acop_pgm_p {}

explore: ims_cust_cusmsc_bank_info_b {}

explore: ims_cust_cusiadr {}

explore: ims_cust_cusmsc_cont_gsa_g {}

explore: ims_cust_cusmsc_eu_cusadrof_e {}

explore: ims_cust_cusmsc_over_amt_z3 {}

explore: ims_cust_cusmsc_grs_mrgn_z1 {}

explore: ims_cust_cusmsc_gst_cust_msc_i {}

explore: ims_cust_cusmsc_gst_cust_inf_f {}

explore: ims_cust_cusmsc_rtun_ovrd_r {}

explore: ims_cust_cusmsc_ship_fr_a {}

explore: ims_cust_cusmsc_ship_msg_m {}

explore: ims_cust_cusmsc_over_pct_z2 {}

explore: ims_cust_cusmsc_svc_lvl_s {}

explore: ims_cust_cusmsc_tax_xmpt_x {}

explore: ims_cust_cusmsc_tax_xmpt_x_tmp {}

explore: ims_order_line_acop_orscap {}

explore: ims_order_line_desc_orsdes {}

explore: ims_order_line_loc_orscapw {}

explore: ims_cust_cusprc {}

explore: ims_order_line_oflw_orslneof {}

explore: ims_order_line_orslne {}

explore: ims_order_orshed {}

explore: ims_order_oflw_orshedof {}

explore: ims_order_line_serial_orscap_s {}

explore: ims_order_shipaddr_orssto_g {}

explore: ims_order_shipaddr_orssto_1 {}

explore: ims_order_shipaddr_orssto_4 {}

explore: ims_order_shipaddr_orssto_m {}

explore: ims_order_shipaddr_orssto_p {}

explore: ims_order_shipaddr_orssto_n {}

explore: ims_order_shipment_orsshh {}

explore: ims_order_shipaddr_orssto_rst {}

explore: ims_po_pusbo {}

explore: ims_order_shipoflw_orsshhof {}

explore: ims_po_pusdes_desc {}

explore: ims_po_pushed {}

explore: ims_po_pusrdt {}

explore: ims_prod_alt_stk_loc_insmsc {}

explore: ims_po_pusrec {}

explore: ims_po_pussto {}

explore: ims_prod_csw_inslor_6 {}

explore: ims_prod_col_prc_insmsc_e {}

explore: ims_prod_ecom_insmsc_w {}

explore: ims_prod_inv_insbrn {}

explore: ims_prod_desc_insstd_d {}

explore: ims_prod_hist_inshis {}

explore: ims_prod_inshed {}

explore: ims_prod_frgn_ccy_insmsc {}

explore: ims_po_puslne {}

explore: ims_prod_kwrd_insstd_k {}

explore: ims_prod_inv_shr_insmsc_h {}

explore: ims_prod_prc_qbrk_insmsc_12 {}

explore: ims_prod_lcl_desc_insstd_l {}

explore: ims_prod_mfr_insstd_m {}

explore: ims_prod_oflw_inshedof {}

explore: ims_prod_qbrk_ovrd_insmsc_0 {}

explore: ims_prod_spec_promo_insmsc_sp {}

explore: ims_prod_resv_inslor_2 {}

explore: ims_prod_qter_prc_insmsc_q {}

explore: ims_prod_std_insstd_1 {}

explore: ims_prod_std_ctlg_insstd_g {}

explore: ims_prod_std_insstd_c {}

explore: ims_prod_std_msg_insstd_z {}

explore: ims_prod_std_insstd_s {}

explore: ims_prod_rtun_inslor_7 {}

explore: ims_prod_week_sls_insmsc_z {}

explore: ims_prod_whse_inslor_1 {}

explore: ims_rc_order_line_hist {}

explore: ims_rc_order_line_oflw_hist {}

explore: ims_prod_wms_inslor_8 {}

explore: ims_rc_order_line_oflw {}

explore: ims_rc_order_oflw_orshedof {}

explore: ims_rc_order_line_orslne {}

explore: ims_rc_order_shipaddr_hist {}

explore: ims_rc_order_orshed {}

explore: ims_rc_order_orshed_hist {}

explore: ims_rc_order_shipaddr_orssto {}

explore: ims_rc_order_shipoflw_hist {}

explore: ims_rc_order_oflw_hist {}

explore: ims_rc_order_shipment_hist {}

explore: ims_rc_order_shipment_orsshh {}

explore: ims_vndr_vnsap {}

explore: ims_vndr_vnsbrn {}

explore: ims_rc_order_shipoflw_orsshhof {}

explore: ims_vndr_vnsmsc_vend_paym_d {}

explore: ims_vndr_vnsmsc_vend_purc_v {}

explore: ims_vndr_vnshed {}

explore: ims_vndr_vnsnst {}

explore: ims_vndr_vnspch_alt_ccy_2 {}

explore: ims_vndr_vnspch_purc_addr_1 {}

explore: ims_vndr_vnspch_purc_nam_0 {}

explore: ims_vndr_vnsprc_adj_cost_a {}

explore: ims_vndr_vnssts {}

explore: ims_vndr_vnspch_purc_rtun_3 {}

explore: ims_vndr_vnsrma {}

explore: lob_vendor_hierarchy_dimention {}

explore: ods_brxfer_line_loc {}

explore: ods_brxfer_line {}

explore: ods_brxfer {}

explore: ods_brxfer_line_acop {}

explore: ods_brxfer_line_desc {}

explore: ods_brxfer_line_oflw {}

explore: ods_brxfer_line_serial_s {}

explore: ods_brxfer_oflw {}

explore: ods_brxfer_ship_status_chg {}

explore: ods_brxfer_pkg_manifest_type_1 {}

explore: ods_brxfer_ship_oflw {}

explore: ods_brxfer_stus_chg {}

explore: ods_brxfer_shipment {}

explore: ods_crmemo {}

explore: ods_brxfer_splt_invc_hdr {}

explore: ods_crmemo_09072008044557000 {}

explore: ods_brxfer_srch {}

explore: ods_crmemo_line_desc {}

explore: ods_crmemo_line {}

explore: ods_crmemo_invoice_nbr {}

explore: ods_crmemo_line_loc {}

explore: ods_crmemo_line_serial_s {}

explore: ods_crmemo_line_oflw {}

explore: ods_crmemo_pkg_manifest_type_1 {}

explore: ods_crmemo_oflw {}

explore: ods_crmemo_ship_oflw {}

explore: ods_crmemo_shipment {}

explore: ods_crmemo_ship_status_chg {}

explore: ods_crmemo_line_acop {}

explore: ods_order_crcrd_own_inf {}

explore: ods_crmemo_stus_chg {}

explore: ods_crmemo_srch {}

explore: ods_order {}

explore: ods_crmemo_splt_invc_hdr {}

explore: ods_order_eu_bid_info {}

explore: ods_order_dynm_msg {}

explore: ods_order_invoice_nbr {}

explore: ods_order_line_acop {}

explore: ods_order_intnl_addr {}

explore: ods_order_line_desc {}

explore: ods_order_line {}

explore: ods_order_line_oflw {}

explore: ods_order_line_serial_s {}

explore: ods_order_oflw {}

explore: ods_order_line_loc {}

explore: ods_order_shipment {}

explore: ods_order_pkg_manifest_type_1 {}

explore: ods_order_ship_status_chg {}

explore: ods_order_stus_chg {}

explore: ods_po_drct_po_rslr_info {}

explore: ods_order_ship_oflw {}

explore: ods_order_splt_invc_hdr {}

explore: ods_order_srch {}

explore: ods_order_ship_to_addr {}

explore: ods_po_hdr {}

explore: ods_po_drct_po_ship_to {}

explore: ods_po_line_bo_so_line_xref {}

explore: ods_po_line_prnt_so {}

explore: ods_po_drct_po_eu_info {}

explore: ods_po_line_prc_prtc {}

explore: ods_rma {}

explore: ods_po_line_recpt_xref {}

explore: ods_po_line {}

explore: ods_rma_line {}

explore: ods_rma_line_loc {}

explore: ods_rma_line_oflw {}

explore: ods_rma_line_acop {}

explore: ods_po_recpt {}

explore: ods_rma_line_serial_s {}

explore: ods_rma_line_desc {}

explore: ods_rma_oflw {}

explore: ods_rma_ship_status_chg {}

explore: ods_rma_shipment {}

explore: product_hierarchy_dimention {}

explore: ods_rma_ship_oflw {}

explore: ods_rma_splt_invc_hdr {}

explore: ods_rma_srch {}

explore: ods_rma_stus_chg {}

explore: ref_new_subcat {}

explore: ref_new_cat {}

explore: sales_mart {}

explore: vendor_hierarchy_dimention {}

explore: vsam_culvna_rstr_vend_i {}

explore: vsam_ielmst_sys_item_hdr {}

explore: vsam_ielmst_sys_item_line {}

explore: vsam_mllmst_contact {}

explore: vsam_culvna_auth_vend_a {}

explore: vsam_mllmst_location {}

explore: vsam_tbxbrn3 {}

explore: vsam_tbxbrnla {}

explore: vsam_rwlpkm_pkg_mnfs_typ_1 {}

explore: vsam_tbxcarr {}

explore: vsam_px_pxlmst {}

explore: vsam_tbxbran {}

explore: vsam_tbxbrseq {}

explore: vsam_tbxainv {}

explore: vsam_tbxconr {}

explore: vsam_tbxcorp {}

explore: vsam_tbxcorp2 {}

explore: vsam_tbxcorp3 {}

explore: vsam_tbxcntry {}

explore: vsam_tbxcmnt {}

explore: vsam_tbxcorp6 {}

explore: vsam_tbxcorp4 {}

explore: vsam_tbxenish {}

explore: vsam_tbxeuro {}

explore: vsam_tbxcorp5 {}

explore: vsam_tbxcrmgr_sb {}

explore: vsam_tbxcti_sb {}

explore: vsam_tbxhold {}

explore: vsam_tbxslmgr_sb {}

explore: vsam_tbxterms {}

explore: vsam_tbxoreas {}

explore: vsam_tbxvalue_sb {}

explore: vsam_tbxmchg {}

explore: vsam_tbxslmgr {}

explore: ctry_hier_dim {}

explore: vsam_tbxvndeu {}

explore: vtemp {}

explore: vsam_tbxvndof {}

explore: lob_dim_dimention {}
