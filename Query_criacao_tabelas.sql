  -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.AdventureWorksDWBuildVersion', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.AdventureWorksDWBuildVersion (

        		[DBVersion] nvarchar(100),
		[VersionDate] datetime,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.categories', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.categories (

        		[category_id] int,
		[category_name] varchar(16),
		[description] varchar(61),
		[picture] varchar(16),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.customer_customer_demo', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.customer_customer_demo (

        		[customer_id] int,
		[customer_type_id] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.customer_demographics', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.customer_demographics (

        		[customer_type_id] int,
		[customer_desc] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.customers', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.customers (

        		[customer_id] varchar(16),
		[company_name] varchar(36),
		[contact_name] varchar(23),
		[contact_title] varchar(30),
		[address] varchar(47),
		[city] varchar(16),
		[region] varchar(16),
		[postal_code] varchar(16),
		[country] varchar(16),
		[phone] varchar(17),
		[fax] varchar(17),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.DatabaseLog', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.DatabaseLog (

        		[DatabaseLogID] int,
		[PostTime] datetime,
		[DatabaseUser] sysname,
		[Event] sysname,
		[Schema] sysname,
		[Object] sysname,
		[TSQL] nvarchar(50),
		[XmlEvent] xml,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.DimAccount', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.DimAccount (

        		[AccountKey] int,
		[ParentAccountKey] int,
		[AccountCodeAlternateKey] int,
		[ParentAccountCodeAlternateKey] int,
		[AccountDescription] nvarchar(100),
		[AccountType] nvarchar(100),
		[Operator] nvarchar(100),
		[CustomMembers] nvarchar(600),
		[ValueType] nvarchar(100),
		[CustomMemberOptions] nvarchar(400),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.DimCurrency', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.DimCurrency (

        		[CurrencyKey] int,
		[CurrencyAlternateKey] nchar,
		[CurrencyName] nvarchar(100),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.DimCustomer', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.DimCustomer (

        		[CustomerKey] int,
		[GeographyKey] int,
		[CustomerAlternateKey] nvarchar(30),
		[Title] nvarchar(16),
		[FirstName] nvarchar(100),
		[MiddleName] nvarchar(100),
		[LastName] nvarchar(100),
		[NameStyle] bit,
		[BirthDate] date,
		[MaritalStatus] nchar,
		[Suffix] nvarchar(20),
		[Gender] nvarchar(2),
		[EmailAddress] nvarchar(100),
		[YearlyIncome] money,
		[TotalChildren] tinyint,
		[NumberChildrenAtHome] tinyint,
		[EnglishEducation] nvarchar(80),
		[SpanishEducation] nvarchar(80),
		[FrenchEducation] nvarchar(80),
		[EnglishOccupation] nvarchar(200),
		[SpanishOccupation] nvarchar(200),
		[FrenchOccupation] nvarchar(200),
		[HouseOwnerFlag] nchar,
		[NumberCarsOwned] tinyint,
		[AddressLine1] nvarchar(240),
		[AddressLine2] nvarchar(240),
		[Phone] nvarchar(40),
		[DateFirstPurchase] date,
		[CommuteDistance] nvarchar(30),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.DimDate', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.DimDate (

        		[DateKey] int,
		[FullDateAlternateKey] date,
		[DayNumberOfWeek] tinyint,
		[EnglishDayNameOfWeek] nvarchar(20),
		[SpanishDayNameOfWeek] nvarchar(20),
		[FrenchDayNameOfWeek] nvarchar(20),
		[DayNumberOfMonth] tinyint,
		[DayNumberOfYear] smallint,
		[WeekNumberOfYear] tinyint,
		[EnglishMonthName] nvarchar(20),
		[SpanishMonthName] nvarchar(20),
		[FrenchMonthName] nvarchar(20),
		[MonthNumberOfYear] tinyint,
		[CalendarQuarter] tinyint,
		[CalendarYear] smallint,
		[CalendarSemester] tinyint,
		[FiscalQuarter] tinyint,
		[FiscalYear] smallint,
		[FiscalSemester] tinyint,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.DimDepartmentGroup', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.DimDepartmentGroup (

        		[DepartmentGroupKey] int,
		[ParentDepartmentGroupKey] int,
		[DepartmentGroupName] nvarchar(100),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.DimEmployee', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.DimEmployee (

        		[EmployeeKey] int,
		[ParentEmployeeKey] int,
		[EmployeeNationalIDAlternateKey] nvarchar(30),
		[ParentEmployeeNationalIDAlternateKey] nvarchar(30),
		[SalesTerritoryKey] int,
		[FirstName] nvarchar(100),
		[LastName] nvarchar(100),
		[MiddleName] nvarchar(100),
		[NameStyle] bit,
		[Title] nvarchar(100),
		[HireDate] date,
		[BirthDate] date,
		[LoginID] nvarchar(512),
		[EmailAddress] nvarchar(100),
		[Phone] nvarchar(50),
		[MaritalStatus] nchar,
		[EmergencyContactName] nvarchar(100),
		[EmergencyContactPhone] nvarchar(50),
		[SalariedFlag] bit,
		[Gender] nchar,
		[PayFrequency] tinyint,
		[BaseRate] money,
		[VacationHours] smallint,
		[SickLeaveHours] smallint,
		[CurrentFlag] bit,
		[SalesPersonFlag] bit,
		[DepartmentName] nvarchar(100),
		[StartDate] date,
		[EndDate] date,
		[Status] nvarchar(100),
		[EmployeePhoto] varbinary,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.DimGeography', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.DimGeography (

        		[GeographyKey] int,
		[City] nvarchar(60),
		[StateProvinceCode] nvarchar(6),
		[StateProvinceName] nvarchar(100),
		[CountryRegionCode] nvarchar(6),
		[EnglishCountryRegionName] nvarchar(100),
		[SpanishCountryRegionName] nvarchar(100),
		[FrenchCountryRegionName] nvarchar(100),
		[PostalCode] nvarchar(30),
		[SalesTerritoryKey] int,
		[IpAddressLocator] nvarchar(30),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.DimOrganization', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.DimOrganization (

        		[OrganizationKey] int,
		[ParentOrganizationKey] int,
		[PercentageOfOwnership] nvarchar(32),
		[OrganizationName] nvarchar(100),
		[CurrencyKey] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.DimProduct', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.DimProduct (

        		[ProductKey] int,
		[ProductAlternateKey] nvarchar(50),
		[ProductSubcategoryKey] int,
		[WeightUnitMeasureCode] nchar,
		[SizeUnitMeasureCode] nchar,
		[EnglishProductName] nvarchar(100),
		[SpanishProductName] nvarchar(100),
		[FrenchProductName] nvarchar(100),
		[StandardCost] money,
		[FinishedGoodsFlag] bit,
		[Color] nvarchar(30),
		[SafetyStockLevel] smallint,
		[ReorderPoint] smallint,
		[ListPrice] money,
		[Size] nvarchar(100),
		[SizeRange] nvarchar(100),
		[Weight] numeric(18,8),
		[DaysToManufacture] int,
		[ProductLine] nchar,
		[DealerPrice] money,
		[Class] nchar,
		[Style] nchar,
		[ModelName] nvarchar(100),
		[LargePhoto] varbinary,
		[EnglishDescription] nvarchar(800),
		[FrenchDescription] nvarchar(800),
		[ChineseDescription] nvarchar(800),
		[ArabicDescription] nvarchar(800),
		[HebrewDescription] nvarchar(800),
		[ThaiDescription] nvarchar(800),
		[GermanDescription] nvarchar(800),
		[JapaneseDescription] nvarchar(800),
		[TurkishDescription] nvarchar(800),
		[StartDate] datetime,
		[EndDate] datetime,
		[Status] nvarchar(14),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.DimProductCategory', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.DimProductCategory (

        		[ProductCategoryKey] int,
		[ProductCategoryAlternateKey] int,
		[EnglishProductCategoryName] nvarchar(100),
		[SpanishProductCategoryName] nvarchar(100),
		[FrenchProductCategoryName] nvarchar(100),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.DimProductSubcategory', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.DimProductSubcategory (

        		[ProductSubcategoryKey] int,
		[ProductSubcategoryAlternateKey] int,
		[EnglishProductSubcategoryName] nvarchar(100),
		[SpanishProductSubcategoryName] nvarchar(100),
		[FrenchProductSubcategoryName] nvarchar(100),
		[ProductCategoryKey] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.DimPromotion', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.DimPromotion (

        		[PromotionKey] int,
		[PromotionAlternateKey] int,
		[EnglishPromotionName] nvarchar(510),
		[SpanishPromotionName] nvarchar(510),
		[FrenchPromotionName] nvarchar(510),
		[DiscountPct] numeric(18,8),
		[EnglishPromotionType] nvarchar(100),
		[SpanishPromotionType] nvarchar(100),
		[FrenchPromotionType] nvarchar(100),
		[EnglishPromotionCategory] nvarchar(100),
		[SpanishPromotionCategory] nvarchar(100),
		[FrenchPromotionCategory] nvarchar(100),
		[StartDate] datetime,
		[EndDate] datetime,
		[MinQty] int,
		[MaxQty] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.DimReseller', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.DimReseller (

        		[ResellerKey] int,
		[GeographyKey] int,
		[ResellerAlternateKey] nvarchar(30),
		[Phone] nvarchar(50),
		[BusinessType] varchar(20),
		[ResellerName] nvarchar(100),
		[NumberEmployees] int,
		[OrderFrequency] char(1),
		[OrderMonth] tinyint,
		[FirstOrderYear] int,
		[LastOrderYear] int,
		[ProductLine] nvarchar(100),
		[AddressLine1] nvarchar(120),
		[AddressLine2] nvarchar(120),
		[AnnualSales] money,
		[BankName] nvarchar(100),
		[MinPaymentType] tinyint,
		[MinPaymentAmount] money,
		[AnnualRevenue] money,
		[YearOpened] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.DimSalesReason', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.DimSalesReason (

        		[SalesReasonKey] int,
		[SalesReasonAlternateKey] int,
		[SalesReasonName] nvarchar(100),
		[SalesReasonReasonType] nvarchar(100),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.DimSalesTerritory', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.DimSalesTerritory (

        		[SalesTerritoryKey] int,
		[SalesTerritoryAlternateKey] int,
		[SalesTerritoryRegion] nvarchar(100),
		[SalesTerritoryCountry] nvarchar(100),
		[SalesTerritoryGroup] nvarchar(100),
		[SalesTerritoryImage] varbinary,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.DimScenario', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.DimScenario (

        		[ScenarioKey] int,
		[ScenarioName] nvarchar(100),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.employee_territories', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.employee_territories (

        		[employee_id] int,
		[territory_id] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.employees', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.employees (

        		[employee_id] int,
		[last_name] varchar(16),
		[first_name] varchar(16),
		[title] varchar(24),
		[title_of_courtesy] varchar(16),
		[birth_date] date,
		[hire_date] date,
		[address] varchar(30),
		[city] varchar(16),
		[region] varchar(16),
		[postal_code] varchar(16),
		[country] varchar(16),
		[home_phone] varchar(16),
		[extension] int,
		[photo] varchar(16),
		[notes] varchar(451),
		[reports_to] int,
		[photo_path] varchar(38),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.FactAdditionalInternationalProductDescription', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.FactAdditionalInternationalProductDescription (

        		[ProductKey] int,
		[CultureName] nvarchar(100),
		[ProductDescription] nvarchar(50),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.FactCallCenter', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.FactCallCenter (

        		[FactCallCenterID] int,
		[DateKey] int,
		[WageType] nvarchar(30),
		[Shift] nvarchar(40),
		[LevelOneOperators] smallint,
		[LevelTwoOperators] smallint,
		[TotalOperators] smallint,
		[Calls] int,
		[AutomaticResponses] int,
		[Orders] int,
		[IssuesRaised] smallint,
		[AverageTimePerIssue] smallint,
		[ServiceGrade] numeric(18,8),
		[Date] datetime,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.FactCurrencyRate', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.FactCurrencyRate (

        		[CurrencyKey] int,
		[DateKey] int,
		[AverageRate] numeric(18,8),
		[EndOfDayRate] numeric(18,8),
		[Date] datetime,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.FactFinance', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.FactFinance (

        		[FinanceKey] int,
		[DateKey] int,
		[OrganizationKey] int,
		[DepartmentGroupKey] int,
		[ScenarioKey] int,
		[AccountKey] int,
		[Amount] numeric(18,8),
		[Date] datetime,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.FactInternetSales', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.FactInternetSales (

        		[ProductKey] int,
		[OrderDateKey] int,
		[DueDateKey] int,
		[ShipDateKey] int,
		[CustomerKey] int,
		[PromotionKey] int,
		[CurrencyKey] int,
		[SalesTerritoryKey] int,
		[SalesOrderNumber] nvarchar(40),
		[SalesOrderLineNumber] tinyint,
		[RevisionNumber] tinyint,
		[OrderQuantity] smallint,
		[UnitPrice] money,
		[ExtendedAmount] money,
		[UnitPriceDiscountPct] numeric(18,8),
		[DiscountAmount] numeric(18,8),
		[ProductStandardCost] money,
		[TotalProductCost] money,
		[SalesAmount] money,
		[TaxAmt] money,
		[Freight] money,
		[CarrierTrackingNumber] nvarchar(50),
		[CustomerPONumber] nvarchar(50),
		[OrderDate] datetime,
		[DueDate] datetime,
		[ShipDate] datetime,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.FactInternetSalesReason', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.FactInternetSalesReason (

        		[SalesOrderNumber] nvarchar(40),
		[SalesOrderLineNumber] tinyint,
		[SalesReasonKey] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.FactProductInventory', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.FactProductInventory (

        		[ProductKey] int,
		[DateKey] int,
		[MovementDate] date,
		[UnitCost] money,
		[UnitsIn] int,
		[UnitsOut] int,
		[UnitsBalance] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.FactResellerSales', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.FactResellerSales (

        		[ProductKey] int,
		[OrderDateKey] int,
		[DueDateKey] int,
		[ShipDateKey] int,
		[ResellerKey] int,
		[EmployeeKey] int,
		[PromotionKey] int,
		[CurrencyKey] int,
		[SalesTerritoryKey] int,
		[SalesOrderNumber] nvarchar(40),
		[SalesOrderLineNumber] tinyint,
		[RevisionNumber] tinyint,
		[OrderQuantity] smallint,
		[UnitPrice] money,
		[ExtendedAmount] money,
		[UnitPriceDiscountPct] numeric(18,8),
		[DiscountAmount] numeric(18,8),
		[ProductStandardCost] money,
		[TotalProductCost] money,
		[SalesAmount] money,
		[TaxAmt] money,
		[Freight] money,
		[CarrierTrackingNumber] nvarchar(50),
		[CustomerPONumber] nvarchar(50),
		[OrderDate] datetime,
		[DueDate] datetime,
		[ShipDate] datetime,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.FactSalesQuota', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.FactSalesQuota (

        		[SalesQuotaKey] int,
		[EmployeeKey] int,
		[DateKey] int,
		[CalendarYear] smallint,
		[CalendarQuarter] tinyint,
		[SalesAmountQuota] money,
		[Date] datetime,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.FactSurveyResponse', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.FactSurveyResponse (

        		[SurveyResponseKey] int,
		[DateKey] int,
		[CustomerKey] int,
		[ProductCategoryKey] int,
		[EnglishProductCategoryName] nvarchar(100),
		[ProductSubcategoryKey] int,
		[EnglishProductSubcategoryName] nvarchar(100),
		[Date] datetime,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.filiais', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.filiais (

        		[cd_filial] int,
		[Filial] varchar(16),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.FIN_fechamento_emissao', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.FIN_fechamento_emissao (

        		[id] int,
		[cd_apolice] bigint,
		[cd_produto] int,
		[id_endosso] int,
		[nome] varchar(50),
		[data_pagamento] date,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.NewFactCurrencyRate', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.NewFactCurrencyRate (

        		[AverageRate] real,
		[CurrencyID] nvarchar(6),
		[CurrencyDate] date,
		[EndOfDayRate] real,
		[CurrencyKey] int,
		[DateKey] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.order_details', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.order_details (

        		[order_id] int,
		[product_id] int,
		[unit_price] numeric(18,8),
		[quantity] int,
		[discount] numeric(18,8),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.orders', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.orders (

        		[order_id] int,
		[customer_id] varchar(16),
		[employee_id] int,
		[order_date] date,
		[required_date] date,
		[shipped_date] date,
		[ship_via] int,
		[freight] numeric(18,8),
		[ship_name] varchar(34),
		[ship_address] varchar(47),
		[ship_city] varchar(16),
		[ship_region] varchar(16),
		[ship_postal_code] varchar(16),
		[ship_country] varchar(16),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.products', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.products (

        		[product_id] int,
		[product_name] varchar(33),
		[supplier_id] int,
		[category_id] int,
		[quantity_per_unit] varchar(20),
		[unit_price] numeric(18,8),
		[units_in_stock] int,
		[units_on_order] int,
		[reorder_level] int,
		[discontinued] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.ProspectiveBuyer', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.ProspectiveBuyer (

        		[ProspectiveBuyerKey] int,
		[ProspectAlternateKey] nvarchar(30),
		[FirstName] nvarchar(100),
		[MiddleName] nvarchar(100),
		[LastName] nvarchar(100),
		[BirthDate] datetime,
		[MaritalStatus] nchar,
		[Gender] nvarchar(2),
		[EmailAddress] nvarchar(100),
		[YearlyIncome] money,
		[TotalChildren] tinyint,
		[NumberChildrenAtHome] tinyint,
		[Education] nvarchar(80),
		[Occupation] nvarchar(200),
		[HouseOwnerFlag] nchar,
		[NumberCarsOwned] tinyint,
		[AddressLine1] nvarchar(240),
		[AddressLine2] nvarchar(240),
		[City] nvarchar(60),
		[StateProvinceCode] nvarchar(6),
		[PostalCode] nvarchar(30),
		[Phone] nvarchar(40),
		[Salutation] nvarchar(16),
		[Unknown] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.region', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.region (

        		[region_id] int,
		[region_description] varchar(16),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.scenario', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.scenario (

        		[ScenarioKey] int,
		[ScenarioName] varchar(16),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.shippers', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.shippers (

        		[shipper_id] int,
		[company_name] varchar(17),
		[phone] varchar(16),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.suppliers', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.suppliers (

        		[supplier_id] int,
		[company_name] varchar(38),
		[contact_name] varchar(26),
		[contact_title] varchar(28),
		[address] varchar(45),
		[city] varchar(16),
		[region] varchar(16),
		[postal_code] varchar(16),
		[country] varchar(16),
		[phone] varchar(16),
		[fax] varchar(16),
		[homepage] varchar(94),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.sysdiagrams', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.sysdiagrams (

        		[name] sysname,
		[principal_id] int,
		[diagram_id] int,
		[version] int,
		[definition] varbinary,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.territories', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.territories (

        		[territory_id] int,
		[territory_description] varchar(16),
		[region_id] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.us_states', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.us_states (

        		[state_id] int,
		[state_name] varchar(20),
		[state_abbr] varchar(16),
		[state_region] varchar(16),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.vendas', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.vendas (

        		[data] int,
		[ID_Venda] int,
		[Data_Venda] date,
		[data_iso] date,
		[nrmes] tinyint,
		[Produto] varchar(16),
		[Quantidade] int,
		[trimestre] tinyint,
		[ano] smallint,
		[Valor_Total] numeric(18,8),
		[produtor] int,
		[semestre] tinyint,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('AdventureWorksDW2019.dbo.vendas_net', 'U') IS NULL
        BEGIN
            CREATE TABLE AdventureWorksDW2019.dbo.vendas_net (

        		[ID_Venda] int,
		[Data_Venda] date,
		[Produto] varchar(16),
		[Quantidade] int,
		[Valor_Total] numeric(18,8),
		[produtor] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('dbt.dbo.categories', 'U') IS NULL
        BEGIN
            CREATE TABLE dbt.dbo.categories (

        		[category_id] int,
		[category_name] varchar(16),
		[description] varchar(61),
		[picture] varchar(16),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('dbt.dbo.customer_customer_demo', 'U') IS NULL
        BEGIN
            CREATE TABLE dbt.dbo.customer_customer_demo (

        		[customer_id] int,
		[customer_type_id] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('dbt.dbo.customer_demographics', 'U') IS NULL
        BEGIN
            CREATE TABLE dbt.dbo.customer_demographics (

        		[customer_type_id] int,
		[customer_desc] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('dbt.dbo.customers', 'U') IS NULL
        BEGIN
            CREATE TABLE dbt.dbo.customers (

        		[customer_id] varchar(16),
		[company_name] varchar(36),
		[contact_name] varchar(23),
		[contact_title] varchar(30),
		[address] varchar(47),
		[city] varchar(16),
		[region] varchar(16),
		[postal_code] varchar(16),
		[country] varchar(16),
		[phone] varchar(17),
		[fax] varchar(17),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('dbt.dbo.employee_territories', 'U') IS NULL
        BEGIN
            CREATE TABLE dbt.dbo.employee_territories (

        		[employee_id] int,
		[territory_id] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('dbt.dbo.employees', 'U') IS NULL
        BEGIN
            CREATE TABLE dbt.dbo.employees (

        		[employee_id] int,
		[last_name] varchar(16),
		[first_name] varchar(16),
		[title] varchar(24),
		[title_of_courtesy] varchar(16),
		[birth_date] date,
		[hire_date] date,
		[address] varchar(30),
		[city] varchar(16),
		[region] varchar(16),
		[postal_code] varchar(16),
		[country] varchar(16),
		[home_phone] varchar(16),
		[extension] int,
		[photo] varchar(16),
		[notes] varchar(451),
		[reports_to] int,
		[photo_path] varchar(38),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('dbt.dbo.fact_vendas_por_vendedor', 'U') IS NULL
        BEGIN
            CREATE TABLE dbt.dbo.fact_vendas_por_vendedor (

        		[comp] nvarchar(8000),
		[employee_id] int,
		[first_name] varchar(16),
		[last_name] varchar(16),
		[product_id] int,
		[product_name] varchar(33),
		[total] money,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('dbt.dbo.filiais', 'U') IS NULL
        BEGIN
            CREATE TABLE dbt.dbo.filiais (

        		[cd_filial] int,
		[Filial] varchar(16),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('dbt.dbo.order_details', 'U') IS NULL
        BEGIN
            CREATE TABLE dbt.dbo.order_details (

        		[order_id] int,
		[product_id] int,
		[unit_price] numeric(18,8),
		[quantity] int,
		[discount] numeric(18,8),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('dbt.dbo.orders', 'U') IS NULL
        BEGIN
            CREATE TABLE dbt.dbo.orders (

        		[order_id] int,
		[customer_id] varchar(16),
		[employee_id] int,
		[order_date] date,
		[required_date] date,
		[shipped_date] date,
		[ship_via] int,
		[freight] numeric(18,8),
		[ship_name] varchar(34),
		[ship_address] varchar(47),
		[ship_city] varchar(16),
		[ship_region] varchar(16),
		[ship_postal_code] varchar(16),
		[ship_country] varchar(16),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('dbt.dbo.products', 'U') IS NULL
        BEGIN
            CREATE TABLE dbt.dbo.products (

        		[product_id] int,
		[product_name] varchar(33),
		[supplier_id] int,
		[category_id] int,
		[quantity_per_unit] varchar(20),
		[unit_price] numeric(18,8),
		[units_in_stock] int,
		[units_on_order] int,
		[reorder_level] int,
		[discontinued] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('dbt.dbo.region', 'U') IS NULL
        BEGIN
            CREATE TABLE dbt.dbo.region (

        		[region_id] int,
		[region_description] varchar(16),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('dbt.dbo.shippers', 'U') IS NULL
        BEGIN
            CREATE TABLE dbt.dbo.shippers (

        		[shipper_id] int,
		[company_name] varchar(17),
		[phone] varchar(16),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('dbt.dbo.suppliers', 'U') IS NULL
        BEGIN
            CREATE TABLE dbt.dbo.suppliers (

        		[supplier_id] int,
		[company_name] varchar(38),
		[contact_name] varchar(26),
		[contact_title] varchar(28),
		[address] varchar(45),
		[city] varchar(16),
		[region] varchar(16),
		[postal_code] varchar(16),
		[country] varchar(16),
		[phone] varchar(16),
		[fax] varchar(16),
		[homepage] varchar(94),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('dbt.dbo.territories', 'U') IS NULL
        BEGIN
            CREATE TABLE dbt.dbo.territories (

        		[territory_id] int,
		[territory_description] varchar(16),
		[region_id] int,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('dbt.dbo.us_states', 'U') IS NULL
        BEGIN
            CREATE TABLE dbt.dbo.us_states (

        		[state_id] int,
		[state_name] varchar(20),
		[state_abbr] varchar(16),
		[state_region] varchar(16),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('innoveo.dbo.bilhetes_cyber', 'U') IS NULL
        BEGIN
            CREATE TABLE innoveo.dbo.bilhetes_cyber (

        		[id] int,
		[uuid] varchar(50),
		[uuidInstallments] varchar(50),
		[Plan] varchar(50),
		[name] varchar(50),
		[nameSocial] varchar(50),
		[cpf] varchar(50),
		[status] varchar(50),
		[quotecounter] varchar(50),
		[luckyNumber] varchar(50),
		[cotationDate] varchar(50),
		[expirationDate] varchar(50),
		[cancelMotivo] varchar(50),
		[cancelDate] varchar(50),
		[IdEndosso] varchar(50),
		[cdApolice] varchar(50),
		[ComissionFee] varchar(50),
		[TariffPrize] varchar(50),
		[FIF] varchar(50),
		[RenewalFrom] varchar(50),
		[UF] varchar(50),
		[created_at] datetime,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('innoveo.dbo.f_bilhetes', 'U') IS NULL
        BEGIN
            CREATE TABLE innoveo.dbo.f_bilhetes (

        		[id_apolice] int,
		[id] int,
		[uuid] varchar(50),
		[uuidInstallments] varchar(50),
		[Plan] varchar(50),
		[name] varchar(50),
		[nameSocial] varchar(50),
		[cpf] varchar(50),
		[status] varchar(50),
		[quotecounter] varchar(50),
		[luckyNumber] varchar(50),
		[cotationDate] varchar(50),
		[expirationDate] varchar(50),
		[cancelMotivo] varchar(50),
		[cancelDate] varchar(50),
		[IdEndosso] varchar(50),
		[cdApolice] varchar(50),
		[ComissionFee] varchar(50),
		[TariffPrize] varchar(50),
		[FIF] varchar(50),
		[RenewalFrom] varchar(50),
		[UF] varchar(50),
		[created_at] datetime,
		[att] datetime,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('innoveo.dbo.parcelas_cyber', 'U') IS NULL
        BEGIN
            CREATE TABLE innoveo.dbo.parcelas_cyber (

        		[id] int,
		[installmentDate] varchar(50),
		[installmentDueDate] varchar(50),
		[installmentStatus] varchar(50),
		[StatusDetail] varchar(50),
		[number] varchar(50),
		[chargeBack] varchar(50),
		[parcelValue] varchar(50),
		[transactionID] varchar(50),
		[chargeBackDate] varchar(50),
		[paymentDate] varchar(50),
		[uuidInstallments] varchar(50),
		[created_at] datetime,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('vendas.dbo.avaliacoes', 'U') IS NULL
        BEGIN
            CREATE TABLE vendas.dbo.avaliacoes (

        		[cliente_id] int,
		[produto_id] int,
		[nota] int,
		[comentario] varchar(125),
		[data_avaliacao] date,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('vendas.dbo.carrinho', 'U') IS NULL
        BEGIN
            CREATE TABLE vendas.dbo.carrinho (

        		[cliente_id] int,
		[produto_id] int,
		[quantidade] int,
		[data_adicionado] date,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('vendas.dbo.categorias', 'U') IS NULL
        BEGIN
            CREATE TABLE vendas.dbo.categorias (

        		[id] int,
		[nome] varchar(16),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('vendas.dbo.clientes', 'U') IS NULL
        BEGIN
            CREATE TABLE vendas.dbo.clientes (

        		[id] int,
		[nome] varchar(29),
		[email] varchar(37),
		[telefone] varchar(19),
		[data_registro] date,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('vendas.dbo.fact_carrinho', 'U') IS NULL
        BEGIN
            CREATE TABLE vendas.dbo.fact_carrinho (

        		[cliente_id] int,
		[produto_id] int,
		[quantidade] int,
		[data_adicionado] date,
		[dt] datetime,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('vendas.dbo.fact_pedidos_incremental', 'U') IS NULL
        BEGIN
            CREATE TABLE vendas.dbo.fact_pedidos_incremental (

        		[id] int,
		[cliente_id] int,
		[endereco_id] int,
		[data_pedido] date,
		[status] varchar(16),
		[created_at] datetime,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('vendas.dbo.fact_vendas', 'U') IS NULL
        BEGIN
            CREATE TABLE vendas.dbo.fact_vendas (

        		[pedido_id] int,
		[cliente_id] int,
		[nome] varchar(29),
		[email] varchar(37),
		[telefone] varchar(19),
		[produto_id] int,
		[nome_produto] varchar(16),
		[quantidade] int,
		[preco_unitario] numeric(18,8),
		[subtotal] numeric(18,8),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('vendas.dbo.itens_pedidos', 'U') IS NULL
        BEGIN
            CREATE TABLE vendas.dbo.itens_pedidos (

        		[pedido_id] int,
		[produto_id] int,
		[quantidade] int,
		[preco_unitario] numeric(18,8),
		[subtotal] numeric(18,8),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('vendas.dbo.pagamentos', 'U') IS NULL
        BEGIN
            CREATE TABLE vendas.dbo.pagamentos (

        		[id] int,
		[pedido_id] int,
		[valor] numeric(18,8),
		[metodo] varchar(19),
		[status] varchar(16),
		[data_pagamento] date,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('vendas.dbo.pedido_snapshot', 'U') IS NULL
        BEGIN
            CREATE TABLE vendas.dbo.pedido_snapshot (

        		[id] int,
		[status] varchar(16),
		[dbt_scd_id] varchar(32),
		[dbt_updated_at] datetime2,
		[dbt_valid_from] datetime2,
		[dbt_valid_to] datetime2,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('vendas.dbo.pedidos', 'U') IS NULL
        BEGIN
            CREATE TABLE vendas.dbo.pedidos (

        		[id] int,
		[cliente_id] int,
		[endereco_id] int,
		[data_pedido] date,
		[status] varchar(16),
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('vendas.dbo.produtos', 'U') IS NULL
        BEGIN
            CREATE TABLE vendas.dbo.produtos (

        		[id] int,
		[nome] varchar(16),
		[descricao] varchar(76),
		[categoria_id] int,
		[preco] numeric(18,8),
		[marca] varchar(16),
		[estoque] int,
		[data_cadastro] date,
   );
        END; 


                      -- Atualizado em 29/04/2025 23:04:20

        IF OBJECT_ID('vendas.dbo.snap_pedidos', 'U') IS NULL
        BEGIN
            CREATE TABLE vendas.dbo.snap_pedidos (

        		[id_scd] bigint,
		[version] int,
		[date_from] datetime,
		[date_to] datetime,
		[id] int,
		[cliente_id] int,
		[endereco_id] int,
		[data_pedido] datetime,
		[status] varchar(16),
   );
        END; 


                    