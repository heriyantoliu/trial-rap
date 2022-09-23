@EndUserText.label: 'Purchase Document Header List Report'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions:true

define root view entity zc_hh_poheader_lrp
  as projection on zi_hh_poheader_u

{
      @EndUserText.label: 'Purchase Document'
      @Consumption.semanticObject: 'PurchasingDocument'
  key PurchaseDocument,
      @EndUserText.label: 'Overall Price'
      OverallPrice,
      @EndUserText.label: 'Approval Required'
      @ObjectModel.foreignKey.association: '_IsApprovalRequired'
      @Consumption.valueHelpDefinition: [{entity:{name:'ZI_Indicator' , element: 'IndicatorValue'}}]
      IsApprovalRequired,
      OverallPriceCriticality,
      @EndUserText.label: 'Status'
      @Consumption.valueHelpDefinition: [{entity:{name:'ZC_hh_status_vh' , element: 'Status'}}]
      Status,
      @EndUserText.label: 'Priority'
      @Consumption.valueHelpDefinition: [{entity:{name:'ZC_hh_priority_vh' , element: 'Priority'}}]
      Priority,
      @Search.defaultSearchElement : true
      @Search.fuzzinessThreshold : 0.8
      @Semantics.text: true
      @EndUserText.label: 'Description'
      Description,
      @EndUserText.label: 'Purchasing Organization'
      @Consumption.valueHelpDefinition: [{entity:{name:'ZI_hh_purchorg' , element: 'PurchasingOrganization'}}]
      PurchasingOrganization,
      @EndUserText.label: 'Currency'
      Currency,
      @EndUserText.label: 'Created at'
      @Consumption.filter.hidden: true
      crea_date_time,
      @EndUserText.label: 'Created by'
      crea_uname,
      @EndUserText.label: 'Last changed at'
      @Consumption.filter.hidden: true
      lchg_date_time,
      @EndUserText.label: 'Last changed by'
      lchg_uname,
      @EndUserText.label: 'Image'
      @Consumption.filter.hidden: true
      PurchaseDocumentImageURL,


      /* Associations */
      _PurchaseDocumentItem : redirected to composition child zc_hh_poitem_lrp,
      _Currency,
      _IsApprovalRequired,
      _Priority,
      _Status,
      _PurchasingOrganization
}
