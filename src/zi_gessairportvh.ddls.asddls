// Step 7 BEGIN
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Airport (Search Help)'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@ObjectModel.resultSet.sizeCategory: #XS
define view entity ZI_GESSAirportVH as select from /DMO/I_Airport
{
    @ObjectModel.text.element: [ 'Name' ]
    @UI.textArrangement: #TEXT_FIRST
    key AirportID,
    Name,
    City,
    CountryCode
}
// Step 7 END
