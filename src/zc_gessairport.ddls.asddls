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
    key AirportID,
    Name,
    City, 
    CountryCode,
    
    /* Associations */
    _Country
}
// Step 1 END
