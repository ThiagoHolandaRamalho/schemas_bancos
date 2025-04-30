

### Atualizado em 29/04/2025 23:04:20

from pydantic import BaseModel
from datetime import datetime,date,timedelta
from  decimal import Decimal
  



class SchemaAdventureworksdwbuildversion(BaseModel):
    DBVersion : str
    VersionDate : datetime




class SchemaCategories(BaseModel):
    category_id : int
    category_name : str
    description : str
    picture : str




class SchemaCustomer_customer_demo(BaseModel):
    customer_id : int
    customer_type_id : int




class SchemaCustomer_demographics(BaseModel):
    customer_type_id : int
    customer_desc : int




class SchemaCustomers(BaseModel):
    customer_id : str
    company_name : str
    contact_name : str
    contact_title : str
    address : str
    city : str
    region : str
    postal_code : str
    country : str
    phone : str
    fax : str




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




class SchemaEmployee_territories(BaseModel):
    employee_id : int
    territory_id : int




class SchemaEmployees(BaseModel):
    employee_id : int
    last_name : str
    first_name : str
    title : str
    title_of_courtesy : str
    birth_date : date
    hire_date : date
    address : str
    city : str
    region : str
    postal_code : str
    country : str
    home_phone : str
    extension : int
    photo : str
    notes : str
    reports_to : int
    photo_path : str




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




class SchemaFiliais(BaseModel):
    cd_filial : int
    Filial : str




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




class SchemaOrder_details(BaseModel):
    order_id : int
    product_id : int
    unit_price : float
    quantity : int
    discount : float




class SchemaOrders(BaseModel):
    order_id : int
    customer_id : str
    employee_id : int
    order_date : date
    required_date : date
    shipped_date : date
    ship_via : int
    freight : float
    ship_name : str
    ship_address : str
    ship_city : str
    ship_region : str
    ship_postal_code : str
    ship_country : str




class SchemaProducts(BaseModel):
    product_id : int
    product_name : str
    supplier_id : int
    category_id : int
    quantity_per_unit : str
    unit_price : float
    units_in_stock : int
    units_on_order : int
    reorder_level : int
    discontinued : int




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




class SchemaRegion(BaseModel):
    region_id : int
    region_description : str




class SchemaScenario(BaseModel):
    ScenarioKey : int
    ScenarioName : str




class SchemaShippers(BaseModel):
    shipper_id : int
    company_name : str
    phone : str




class SchemaSuppliers(BaseModel):
    supplier_id : int
    company_name : str
    contact_name : str
    contact_title : str
    address : str
    city : str
    region : str
    postal_code : str
    country : str
    phone : str
    fax : str
    homepage : str




class SchemaSysdiagrams(BaseModel):
    name : str
    principal_id : int
    diagram_id : int
    version : int
    definition : bytes




class SchemaTerritories(BaseModel):
    territory_id : int
    territory_description : str
    region_id : int




class SchemaUs_states(BaseModel):
    state_id : int
    state_name : str
    state_abbr : str
    state_region : str




class SchemaVendas(BaseModel):
    data : int
    ID_Venda : int
    Data_Venda : date
    data_iso : date
    nrmes : int
    Produto : str
    Quantidade : int
    trimestre : int
    ano : int
    Valor_Total : float
    produtor : int
    semestre : int




class SchemaVendas_net(BaseModel):
    ID_Venda : int
    Data_Venda : date
    Produto : str
    Quantidade : int
    Valor_Total : float
    produtor : int




class SchemaCategories(BaseModel):
    category_id : int
    category_name : str
    description : str
    picture : str




class SchemaCustomer_customer_demo(BaseModel):
    customer_id : int
    customer_type_id : int




class SchemaCustomer_demographics(BaseModel):
    customer_type_id : int
    customer_desc : int




class SchemaCustomers(BaseModel):
    customer_id : str
    company_name : str
    contact_name : str
    contact_title : str
    address : str
    city : str
    region : str
    postal_code : str
    country : str
    phone : str
    fax : str




class SchemaEmployee_territories(BaseModel):
    employee_id : int
    territory_id : int




class SchemaEmployees(BaseModel):
    employee_id : int
    last_name : str
    first_name : str
    title : str
    title_of_courtesy : str
    birth_date : date
    hire_date : date
    address : str
    city : str
    region : str
    postal_code : str
    country : str
    home_phone : str
    extension : int
    photo : str
    notes : str
    reports_to : int
    photo_path : str




class SchemaFact_vendas_por_vendedor(BaseModel):
    comp : str
    employee_id : int
    first_name : str
    last_name : str
    product_id : int
    product_name : str
    total : Decimal




class SchemaFiliais(BaseModel):
    cd_filial : int
    Filial : str




class SchemaOrder_details(BaseModel):
    order_id : int
    product_id : int
    unit_price : float
    quantity : int
    discount : float




class SchemaOrders(BaseModel):
    order_id : int
    customer_id : str
    employee_id : int
    order_date : date
    required_date : date
    shipped_date : date
    ship_via : int
    freight : float
    ship_name : str
    ship_address : str
    ship_city : str
    ship_region : str
    ship_postal_code : str
    ship_country : str




class SchemaProducts(BaseModel):
    product_id : int
    product_name : str
    supplier_id : int
    category_id : int
    quantity_per_unit : str
    unit_price : float
    units_in_stock : int
    units_on_order : int
    reorder_level : int
    discontinued : int




class SchemaRegion(BaseModel):
    region_id : int
    region_description : str




class SchemaShippers(BaseModel):
    shipper_id : int
    company_name : str
    phone : str




class SchemaSuppliers(BaseModel):
    supplier_id : int
    company_name : str
    contact_name : str
    contact_title : str
    address : str
    city : str
    region : str
    postal_code : str
    country : str
    phone : str
    fax : str
    homepage : str




class SchemaTerritories(BaseModel):
    territory_id : int
    territory_description : str
    region_id : int




class SchemaUs_states(BaseModel):
    state_id : int
    state_name : str
    state_abbr : str
    state_region : str




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




class SchemaF_bilhetes(BaseModel):
    id_apolice : int
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
    att : datetime




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




class SchemaAvaliacoes(BaseModel):
    cliente_id : int
    produto_id : int
    nota : int
    comentario : str
    data_avaliacao : date




class SchemaCarrinho(BaseModel):
    cliente_id : int
    produto_id : int
    quantidade : int
    data_adicionado : date




class SchemaCategorias(BaseModel):
    id : int
    nome : str




class SchemaClientes(BaseModel):
    id : int
    nome : str
    email : str
    telefone : str
    data_registro : date




class SchemaFact_carrinho(BaseModel):
    cliente_id : int
    produto_id : int
    quantidade : int
    data_adicionado : date
    dt : datetime




class SchemaFact_pedidos_incremental(BaseModel):
    id : int
    cliente_id : int
    endereco_id : int
    data_pedido : date
    status : str
    created_at : datetime




class SchemaFact_vendas(BaseModel):
    pedido_id : int
    cliente_id : int
    nome : str
    email : str
    telefone : str
    produto_id : int
    nome_produto : str
    quantidade : int
    preco_unitario : float
    subtotal : float




class SchemaItens_pedidos(BaseModel):
    pedido_id : int
    produto_id : int
    quantidade : int
    preco_unitario : float
    subtotal : float




class SchemaPagamentos(BaseModel):
    id : int
    pedido_id : int
    valor : float
    metodo : str
    status : str
    data_pagamento : date




class SchemaPedido_snapshot(BaseModel):
    id : int
    status : str
    dbt_scd_id : str
    dbt_updated_at : datetime
    dbt_valid_from : datetime
    dbt_valid_to : datetime




class SchemaPedidos(BaseModel):
    id : int
    cliente_id : int
    endereco_id : int
    data_pedido : date
    status : str




class SchemaProdutos(BaseModel):
    id : int
    nome : str
    descricao : str
    categoria_id : int
    preco : float
    marca : str
    estoque : int
    data_cadastro : date




class SchemaSnap_pedidos(BaseModel):
    id_scd : int
    version : int
    date_from : datetime
    date_to : datetime
    id : int
    cliente_id : int
    endereco_id : int
    data_pedido : datetime
    status : str




