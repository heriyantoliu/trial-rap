@EndUserText.label: 'PO Priority Value Help'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true

@ObjectModel.semanticKey:  [ 'priority' ]

@ObjectModel.resultSet.sizeCategory: #XS
@ObjectModel.dataCategory: #VALUE_HELP
define view entity zc_hh_priority_vh
  as select from zi_hh_popriority
{
      @ObjectModel.text.element: ['PriorityText']
  key Priority,
      @Search: { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.7 }
      PriorityText
}
