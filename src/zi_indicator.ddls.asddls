
@ObjectModel.representativeKey: 'IndicatorValue'

@EndUserText.label: 'Indicator'

@AccessControl.authorizationCheck: #NOT_REQUIRED

@Metadata.ignorePropagatedAnnotations: true 

//Commented by VDM CDS Suite Plugin:@ObjectModel.representativeKey: 'IndicatorValue'
//Commented by VDM CDS Suite Plugin:
define view entity zI_Indicator as select from zhh_dd07l 
    association [0..*] to zI_Indicatortext as _IndicatorText
      on  $projection.IndicatorValue = _IndicatorText.IndicatorValue 
{
   @ObjectModel.text.association: '_IndicatorText'
   key cast ( substring( domvalue_l, 1, 1 ) as abap.char(1) ) as IndicatorValue,
   _IndicatorText
}where zhh_dd07l.domname = 'XFELD' and zhh_dd07l.as4local = 'A'  
