
@ObjectModel.dataCategory: #TEXT
@ObjectModel.representativeKey: 'IndicatorValue'

@EndUserText.label: 'Indicator Text'


@Metadata.ignorePropagatedAnnotations: true
//Commented by VDM CDS Suite Plugin:@ObjectModel.dataCategory: #TEXT
//Commented by VDM CDS Suite Plugin:@ObjectModel.representativeKey: 'IndicatorValue'
//Commented by VDM CDS Suite Plugin:
define view entity zI_Indicatortext as select from zhh_dd07t  
    association [0..1] to zI_Indicator as _Indicator
      on  $projection.IndicatorValue = _Indicator.IndicatorValue
    association [0..1] to I_Language as _Language
        on $projection.Language = _Language.Language  
  {
    @Semantics.language: true
    @ObjectModel.foreignKey.association: '_Language'
    key ddlanguage as Language,
    key cast ( substring( domvalue_l, 1, 1 ) as abap.char(1) ) as  IndicatorValue,
    @Semantics.text: true
    zhh_dd07t.ddtext as  IndicatorText,
    _Indicator,
    _Language
  
}where zhh_dd07t.domname = 'XFELD' and zhh_dd07t.as4local = 'A'    
  
  
  
 