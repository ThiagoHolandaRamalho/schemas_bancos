from pydantic import BaseModel
from datetime import datetime,date,timedelta
from  decimal import Decimal
  



class SchemaAdventureworksdwbuildversion(BaseModel):
    DBVersion : str
    VersionDate : datetime




class SchemaDatabaselog(BaseModel):
    DatabaseLogID : int
    PostTime : datetime
    DatabaseUser : str
    Event : str
    Schema : str
    Object : str
    TSQL : str
    XmlEvent : str




class SchemaDimaccount(BaseModel):
    AccountKey : int
    ParentAccountKey : int
    AccountCodeAlternateKey : int
    ParentAccountCodeAlternateKey : int
    AccountDescription : str
    AccountType : str
    Operator : str
    CustomMembers : str
    ValueType : str
    CustomMemberOptions : str




class SchemaDimcurrency(BaseModel):
    CurrencyKey : int
    CurrencyAlternateKey : str
    CurrencyName : str




class SchemaDimcustomer(BaseModel):
    CustomerKey : int
    GeographyKey : int
    CustomerAlternateKey : str
    Title : str
    FirstName : str
    MiddleName : str
    LastName : str
    NameStyle : bool
    BirthDate : date
    MaritalStatus : str
    Suffix : str
    Gender : str
    EmailAddress : str
    YearlyIncome : Decimal
    TotalChildren : int
    NumberChildrenAtHome : int
    EnglishEducation : str
    SpanishEducation : str
    FrenchEducation : str
    EnglishOccupation : str
    SpanishOccupation : str
    FrenchOccupation : str
    HouseOwnerFlag : str
    NumberCarsOwned : int
    AddressLine1 : str
    AddressLine2 : str
    Phone : str
    DateFirstPurchase : date
    CommuteDistance : str




class SchemaDimdate(BaseModel):
    DateKey : int
    FullDateAlternateKey : date
    DayNumberOfWeek : int
    EnglishDayNameOfWeek : str
    SpanishDayNameOfWeek : str
    FrenchDayNameOfWeek : str
    DayNumberOfMonth : int
    DayNumberOfYear : int
    WeekNumberOfYear : int
    EnglishMonthName : str
    SpanishMonthName : str
    FrenchMonthName : str
    MonthNumberOfYear : int
    CalendarQuarter : int
    CalendarYear : int
    CalendarSemester : int
    FiscalQuarter : int
    FiscalYear : int
    FiscalSemester : int




class SchemaDimdepartmentgroup(BaseModel):
    DepartmentGroupKey : int
    ParentDepartmentGroupKey : int
    DepartmentGroupName : str




class SchemaDimemployee(BaseModel):
    EmployeeKey : int
    ParentEmployeeKey : int
    EmployeeNationalIDAlternateKey : str
    ParentEmployeeNationalIDAlternateKey : str
    SalesTerritoryKey : int
    FirstName : str
    LastName : str
    MiddleName : str
    NameStyle : bool
    Title : str
    HireDate : date
    BirthDate : date
    LoginID : str
    EmailAddress : str
    Phone : str
    MaritalStatus : str
    EmergencyContactName : str
    EmergencyContactPhone : str
    SalariedFlag : bool
    Gender : str
    PayFrequency : int
    BaseRate : Decimal
    VacationHours : int
    SickLeaveHours : int
    CurrentFlag : bool
    SalesPersonFlag : bool
    DepartmentName : str
    StartDate : date
    EndDate : date
    Status : str
    EmployeePhoto : bytes




class SchemaDimgeography(BaseModel):
    GeographyKey : int
    City : str
    StateProvinceCode : str
    StateProvinceName : str
    CountryRegionCode : str
    EnglishCountryRegionName : str
    SpanishCountryRegionName : str
    FrenchCountryRegionName : str
    PostalCode : str
    SalesTerritoryKey : int
    IpAddressLocator : str




class SchemaDimorganization(BaseModel):
    OrganizationKey : int
    ParentOrganizationKey : int
    PercentageOfOwnership : str
    OrganizationName : str
    CurrencyKey : int




class SchemaDimproduct(BaseModel):
    ProductKey : int
    ProductAlternateKey : str
    ProductSubcategoryKey : int
    WeightUnitMeasureCode : str
    SizeUnitMeasureCode : str
    EnglishProductName : str
    SpanishProductName : str
    FrenchProductName : str
    StandardCost : Decimal
    FinishedGoodsFlag : bool
    Color : str
    SafetyStockLevel : int
    ReorderPoint : int
    ListPrice : Decimal
    Size : str
    SizeRange : str
    Weight : float
    DaysToManufacture : int
    ProductLine : str
    DealerPrice : Decimal
    Class : str
    Style : str
    ModelName : str
    LargePhoto : bytes
    EnglishDescription : str
    FrenchDescription : str
    ChineseDescription : str
    ArabicDescription : str
    HebrewDescription : str
    ThaiDescription : str
    GermanDescription : str
    JapaneseDescription : str
    TurkishDescription : str
    StartDate : datetime
    EndDate : datetime
    Status : str




class SchemaDimproductcategory(BaseModel):
    ProductCategoryKey : int
    ProductCategoryAlternateKey : int
    EnglishProductCategoryName : str
    SpanishProductCategoryName : str
    FrenchProductCategoryName : str




class SchemaDimproductsubcategory(BaseModel):
    ProductSubcategoryKey : int
    ProductSubcategoryAlternateKey : int
    EnglishProductSubcategoryName : str
    SpanishProductSubcategoryName : str
    FrenchProductSubcategoryName : str
    ProductCategoryKey : int




class SchemaDimpromotion(BaseModel):
    PromotionKey : int
    PromotionAlternateKey : int
    EnglishPromotionName : str
    SpanishPromotionName : str
    FrenchPromotionName : str
    DiscountPct : float
    EnglishPromotionType : str
    SpanishPromotionType : str
    FrenchPromotionType : str
    EnglishPromotionCategory : str
    SpanishPromotionCategory : str
    FrenchPromotionCategory : str
    StartDate : datetime
    EndDate : datetime
    MinQty : int
    MaxQty : int




class SchemaDimreseller(BaseModel):
    ResellerKey : int
    GeographyKey : int
    ResellerAlternateKey : str
    Phone : str
    BusinessType : str
    ResellerName : str
    NumberEmployees : int
    OrderFrequency : str
    OrderMonth : int
    FirstOrderYear : int
    LastOrderYear : int
    ProductLine : str
    AddressLine1 : str
    AddressLine2 : str
    AnnualSales : Decimal
    BankName : str
    MinPaymentType : int
    MinPaymentAmount : Decimal
    AnnualRevenue : Decimal
    YearOpened : int




class SchemaDimsalesreason(BaseModel):
    SalesReasonKey : int
    SalesReasonAlternateKey : int
    SalesReasonName : str
    SalesReasonReasonType : str




class SchemaDimsalesterritory(BaseModel):
    SalesTerritoryKey : int
    SalesTerritoryAlternateKey : int
    SalesTerritoryRegion : str
    SalesTerritoryCountry : str
    SalesTerritoryGroup : str
    SalesTerritoryImage : bytes




class SchemaDimscenario(BaseModel):
    ScenarioKey : int
    ScenarioName : str




class SchemaFactadditionalinternationalproductdescription(BaseModel):
    ProductKey : int
    CultureName : str
    ProductDescription : str




class SchemaFactcallcenter(BaseModel):
    FactCallCenterID : int
    DateKey : int
    WageType : str
    Shift : str
    LevelOneOperators : int
    LevelTwoOperators : int
    TotalOperators : int
    Calls : int
    AutomaticResponses : int
    Orders : int
    IssuesRaised : int
    AverageTimePerIssue : int
    ServiceGrade : float
    Date : datetime




class SchemaFactcurrencyrate(BaseModel):
    CurrencyKey : int
    DateKey : int
    AverageRate : float
    EndOfDayRate : float
    Date : datetime




class SchemaFactfinance(BaseModel):
    FinanceKey : int
    DateKey : int
    OrganizationKey : int
    DepartmentGroupKey : int
    ScenarioKey : int
    AccountKey : int
    Amount : float
    Date : datetime




class SchemaFactinternetsales(BaseModel):
    ProductKey : int
    OrderDateKey : int
    DueDateKey : int
    ShipDateKey : int
    CustomerKey : int
    PromotionKey : int
    CurrencyKey : int
    SalesTerritoryKey : int
    SalesOrderNumber : str
    SalesOrderLineNumber : int
    RevisionNumber : int
    OrderQuantity : int
    UnitPrice : Decimal
    ExtendedAmount : Decimal
    UnitPriceDiscountPct : float
    DiscountAmount : float
    ProductStandardCost : Decimal
    TotalProductCost : Decimal
    SalesAmount : Decimal
    TaxAmt : Decimal
    Freight : Decimal
    CarrierTrackingNumber : str
    CustomerPONumber : str
    OrderDate : datetime
    DueDate : datetime
    ShipDate : datetime




class SchemaFactinternetsalesreason(BaseModel):
    SalesOrderNumber : str
    SalesOrderLineNumber : int
    SalesReasonKey : int




class SchemaFactproductinventory(BaseModel):
    ProductKey : int
    DateKey : int
    MovementDate : date
    UnitCost : Decimal
    UnitsIn : int
    UnitsOut : int
    UnitsBalance : int




class SchemaFactresellersales(BaseModel):
    ProductKey : int
    OrderDateKey : int
    DueDateKey : int
    ShipDateKey : int
    ResellerKey : int
    EmployeeKey : int
    PromotionKey : int
    CurrencyKey : int
    SalesTerritoryKey : int
    SalesOrderNumber : str
    SalesOrderLineNumber : int
    RevisionNumber : int
    OrderQuantity : int
    UnitPrice : Decimal
    ExtendedAmount : Decimal
    UnitPriceDiscountPct : float
    DiscountAmount : float
    ProductStandardCost : Decimal
    TotalProductCost : Decimal
    SalesAmount : Decimal
    TaxAmt : Decimal
    Freight : Decimal
    CarrierTrackingNumber : str
    CustomerPONumber : str
    OrderDate : datetime
    DueDate : datetime
    ShipDate : datetime




class SchemaFactsalesquota(BaseModel):
    SalesQuotaKey : int
    EmployeeKey : int
    DateKey : int
    CalendarYear : int
    CalendarQuarter : int
    SalesAmountQuota : Decimal
    Date : datetime




class SchemaFactsurveyresponse(BaseModel):
    SurveyResponseKey : int
    DateKey : int
    CustomerKey : int
    ProductCategoryKey : int
    EnglishProductCategoryName : str
    ProductSubcategoryKey : int
    EnglishProductSubcategoryName : str
    Date : datetime




class SchemaFin_fechamento_emissao(BaseModel):
    id : int
    cd_apolice : int
    cd_produto : int
    id_endosso : int
    nome : str
    data_pagamento : date




class SchemaNewfactcurrencyrate(BaseModel):
    AverageRate : float
    CurrencyID : str
    CurrencyDate : date
    EndOfDayRate : float
    CurrencyKey : int
    DateKey : int




class SchemaProspectivebuyer(BaseModel):
    ProspectiveBuyerKey : int
    ProspectAlternateKey : str
    FirstName : str
    MiddleName : str
    LastName : str
    BirthDate : datetime
    MaritalStatus : str
    Gender : str
    EmailAddress : str
    YearlyIncome : Decimal
    TotalChildren : int
    NumberChildrenAtHome : int
    Education : str
    Occupation : str
    HouseOwnerFlag : str
    NumberCarsOwned : int
    AddressLine1 : str
    AddressLine2 : str
    City : str
    StateProvinceCode : str
    PostalCode : str
    Phone : str
    Salutation : str
    Unknown : int




class SchemaSysdiagrams(BaseModel):
    name : str
    principal_id : int
    diagram_id : int
    version : int
    definition : bytes




class SchemaBilhetes_cyber(BaseModel):
    id : int
    uuid : str
    uuidInstallments : str
    Plan : str
    name : str
    nameSocial : str
    cpf : str
    status : str
    quotecounter : str
    luckyNumber : str
    cotationDate : str
    expirationDate : str
    cancelMotivo : str
    cancelDate : str
    IdEndosso : str
    cdApolice : str
    ComissionFee : str
    TariffPrize : str
    FIF : str
    RenewalFrom : str
    UF : str
    created_at : datetime




class SchemaParcelas_cyber(BaseModel):
    id : int
    installmentDate : str
    installmentDueDate : str
    installmentStatus : str
    StatusDetail : str
    number : str
    chargeBack : str
    parcelValue : str
    transactionID : str
    chargeBackDate : str
    paymentDate : str
    uuidInstallments : str
    created_at : datetime




