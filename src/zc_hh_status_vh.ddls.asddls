@EndUserText.label: 'PO Status Value Help'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true

@ObjectModel.semanticKey:  [ 'status' ]

@ObjectModel.resultSet.sizeCategory: #XS
@ObjectModel.dataCategory: #VALUE_HELP
define view entity zc_hh_status_vh
  as select from zi_hh_postatus
{
      @ObjectModel.text.element: ['StatusText']
  key Status,
      @Search: { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.7 }
      StatusText
}
