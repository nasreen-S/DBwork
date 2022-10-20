
CREATE TABLE carsales_FA_DB(
    [GpsProvider] varchar(50),
    [BookingID] varchar(50),
    [Market Regular ] varchar(50),
    [BookingID_Date] varchar(50),
    [vehicle_no] varchar(50),
    [Origin_Location] varchar(50),
    [Destination_Location] varchar(50),
    [Org_lat_lon] varchar(50),
    [Des_lat_lon] varchar(50),
    [Data_Ping_time] varchar(50),
    [Planned_ETA] varchar(50),
    [Current_Location] varchar(50),
    [DestinationLocation] varchar(50),
    [actual_eta] varchar(50),
    [Curr_lat] varchar(50),
    [Curr_lon] varchar(50),
    [ontime] varchar(50),
    [delay] varchar(50),
    [OriginLocation_Code] varchar(50),
    [DestinationLocation_Code] varchar(50),
    [trip_start_date] varchar(50),
    [trip_end_date] varchar(50),
    [TRANSPORTATION_DISTANCE_IN_KM] varchar(50),
    [vehicleType] varchar(50),
    [Minimum_kms_to_be_covered_in_a_day] varchar(50),
    [Driver_Name] varchar(50),
    [Driver_MobileNo] varchar(50),
    [customerID] varchar(50),
    [customerNameCode] varchar(50),
    [supplierID] varchar(50),
    [supplierNameCode] varchar(50),
    [Material Shipped] varchar(50),
    [Delivery Mode] varchar(255)
)



select * from carsales_FA_DB

-----------------------------------car sales shipment DB DST------------------

CREATE TABLE SSRS_carshipment_trg (
    [SupplierID] float,
    [SupplierAddress] nvarchar(255),
    [SupplierName] nvarchar(255),
    [SupplierContactDetails] nvarchar(255),
    [ProductID] float,
    [CarMaker] nvarchar(255),
    [CarModel] nvarchar(255),
    [CarColor] nvarchar(255),
    [CarModelYear] float,
    [CarPrice] float,
    [CustomerID] nvarchar(255),
    [CustomerName] nvarchar(255),
    [Gender] nvarchar(255),
    [JobTitle] nvarchar(255),
    [PhoneNumber] nvarchar(255),
    [EmailAddress] nvarchar(255),
    [City] nvarchar(255),
    [Country] nvarchar(255),
    [CountryCode] nvarchar(255),
    [State] nvarchar(255),
    [CustomerAddress] nvarchar(255),
    [OrderDate] float,
    [OrderID] nvarchar(255),
    [ShipDate] float,
    [ShipMode] nvarchar(255),
    [Shipping] nvarchar(255),
    [PostalCode] float,
    [Sales] float,
    [Quantity] float,
    [Discount] float,
    [CreditCardType] nvarchar(255),
    [CreditCard] float,
    [CustomerFeedback] nvarchar(255)
)


select * from SSRS_carshipment_trg







