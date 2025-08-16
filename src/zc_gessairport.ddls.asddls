// Step 1 BEGIN
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Airport (Consumption)'
@Metadata: { allowExtensions: true,
             ignorePropagatedAnnotations: true }
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_GESSAirport as select from /DMO/I_Airport
{
    @ObjectModel.text.element: [ 'Name' ] // Step 4
    key AirportID,
    Name,
    City,
    _Country._Text[1: Language = $session.system_language ].CountryName, // Step 6
    CountryCode,
    
    /* Associations */
    _Country
}
// Step 1 END
