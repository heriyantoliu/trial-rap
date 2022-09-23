@EndUserText.label: 'Purchase Document Item List Report'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions:true
define view entity zc_hh_poitem_lrp
  as projection on zi_hh_poitem_u
{
          @EndUserText.label: 'Purchase Document Item'
          @Search: {defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8}
  key     PurchaseDocumentItem,
          @ObjectModel.foreignKey.association: '_PurchaseDocument'
          @EndUserText.label: 'Purchase Document'
  key     PurchaseDocument,
          @EndUserText.label: 'Price'
          Price,
          @EndUserText.label: 'Quantity'
          Quantity,
          @EndUserText.label: 'Overall Item Price'
          OverallItemPrice,
          @Search: {defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8}
          @EndUserText.label: 'Vendor Name'
          Vendor,
          @EndUserText.label: 'Vendor Type'
          @Consumption.valueHelpDefinition: [{entity:{name:'ZC_hh_vdrtype_vh' , element: 'VendorType'}}]
          VendorType,
          @Search: {defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8}
          @EndUserText.label: 'Item Description'
          Description,
          @Consumption.valueHelpDefinition: [{entity:{name:'I_Currency' , element: 'Currency'}}]
          Currency,
          @Consumption.valueHelpDefinition: [{entity:{name:'I_UnitOfMeasure' , element: 'UnitOfMeasure'}}]
          QuantityUnit,
          @EndUserText.label: 'Image'
          @Consumption.filter.hidden: true
          PurchaseDocumentItemImageURL,
          VendorRating,
          @EndUserText.label: 'Created at'
          crea_date_time,
          @EndUserText.label: 'Created by'
          crea_uname,
          @EndUserText.label: 'Last changed at'
          lchg_date_time,
          @EndUserText.label: 'Last changed by'
          lchg_uname,
          /* Associations */
          _PurchaseDocument : redirected to parent zc_hh_poheader_lrp,
          _QuantityUnitOfMeasure,
          _VendorType

}
