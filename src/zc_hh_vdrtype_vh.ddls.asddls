@EndUserText.label: 'Vendor Type Value Help'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true

@ObjectModel.semanticKey:  [ 'VendorType' ]

@ObjectModel.resultSet.sizeCategory: #XS
@ObjectModel.dataCategory: #VALUE_HELP
define view entity zc_hh_vdrtype_vh
  as select from zi_hh_vdrtype as VendorTypeText
{
      @ObjectModel.text.element: ['VendorTypeText']
  key VendorType,
      @Search: { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.7 }
      VendorTypeText
}
