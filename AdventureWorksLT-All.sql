USE [ReplaceByYourDatabase/WarehouseName]
GO

-- **Create Address Table**
DROP TABLE IF EXISTS SalesLT.Address;
CREATE TABLE SalesLT.Address (
    AddressID INT,
    AddressLine1 VARCHAR(60),
    AddressLine2 VARCHAR(60),
    City VARCHAR(30),
    StateProvince VARCHAR(50),
    CountryRegion VARCHAR(50),
    PostalCode VARCHAR(15),
    ModifiedDate DATE
);
GO

-- **Create Customer Table**
DROP TABLE IF EXISTS SalesLT.Customer;
CREATE TABLE SalesLT.Customer (
    CustomerID INT,
    NameStyle BIT,
    Title VARCHAR(8),
    FirstName VARCHAR(50),
    MiddleName VARCHAR(50),
    LastName VARCHAR(50),
    Suffix VARCHAR(10),
    CompanyName VARCHAR(128),
    SalesPerson VARCHAR(256),
    EmailAddress VARCHAR(50),
    Phone VARCHAR(25),
    PasswordHash VARCHAR(128),
    PasswordSalt VARCHAR(10),
    ModifiedDate DATE
);
GO

-- **Create CustomerAddress Table**
DROP TABLE IF EXISTS SalesLT.CustomerAddress;
CREATE TABLE SalesLT.CustomerAddress (
    CustomerID INT,
    AddressID INT,
    AddressType VARCHAR(50),
    ModifiedDate DATE
);
GO

-- **Create Product Table**
DROP TABLE IF EXISTS SalesLT.Product;
CREATE TABLE SalesLT.Product (
    ProductID INT,
    Name VARCHAR(50),
    ProductNumber VARCHAR(25),
    Color VARCHAR(15),
    StandardCost DECIMAL(10,2),
    ListPrice DECIMAL(10,2),
    Size VARCHAR(5),
    Weight DECIMAL(8,2),
    ProductCategoryID INT,
    ProductModelID INT,
    SellStartDate DATE,
    SellEndDate DATE,
    DiscontinuedDate DATE,
    ThumbNailPhoto VARBINARY(MAX),
    ThumbnailPhotoFileName VARCHAR(50),
    ModifiedDate DATE
);
GO

-- **Create ProductDescription Table**
DROP TABLE IF EXISTS SalesLT.ProductDescription;
CREATE TABLE SalesLT.ProductDescription (
    ProductDescriptionID INT,
    Description VARCHAR(400),
    ModifiedDate DATE
);
GO

-- **Create ProductModel Table**
DROP TABLE IF EXISTS SalesLT.ProductModel;
CREATE TABLE SalesLT.ProductModel (
    ProductModelID INT,
    Name VARCHAR(50),
    ModifiedDate DATE
);
GO

-- **Create ProductModelProductDescription Table**
DROP TABLE IF EXISTS SalesLT.ProductModelProductDescription;
CREATE TABLE SalesLT.ProductModelProductDescription (
    ProductModelID INT,
    ProductDescriptionID INT,
    Culture VARCHAR(6),
    ModifiedDate DATE
);
GO

-- **Create SalesOrderHeader Table**
DROP TABLE IF EXISTS SalesLT.SalesOrderHeader;
CREATE TABLE SalesLT.SalesOrderHeader (
    SalesOrderID INT,
    RevisionNumber INT, -- Replaced TINYINT with INT
    OrderDate DATE,
    DueDate DATE,
    ShipDate DATE,
    Status INT, -- Replaced TINYINT with INT
    OnlineOrderFlag BIT,
    SalesOrderNumber VARCHAR(25),
    PurchaseOrderNumber VARCHAR(25),
    AccountNumber VARCHAR(15),
    CustomerID INT,
    ShipToAddressID INT,
    BillToAddressID INT,
    ShipMethod VARCHAR(50),
    CreditCardApprovalCode VARCHAR(15),
    SubTotal DECIMAL(10,2),
    TaxAmt DECIMAL(10,2),
    Freight DECIMAL(10,2),
    TotalDue DECIMAL(10,2),
    Comment VARCHAR(MAX),
    ModifiedDate DATE
);
GO

-- **Create SalesOrderDetail Table**
DROP TABLE IF EXISTS SalesLT.SalesOrderDetail;
CREATE TABLE SalesLT.SalesOrderDetail (
    SalesOrderID INT,
    SalesOrderDetailID INT,
    OrderQty INT, -- Replaced SMALLINT with INT
    ProductID INT,
    UnitPrice DECIMAL(10,2),
    UnitPriceDiscount DECIMAL(5,2),
    LineTotal DECIMAL(10,2),
    ModifiedDate DATE
);
GO
