CREATE TABLE EMPLOYEE (EmployeeID numeric IDENTITY(101,1),LastName varchar(50),FirstName varchar(50),Department varchar(50),Position varchar(50),Supervisor numeric,OfficePhone varchar(20),OfficeFax varchar(20),EmailAddress varchar(100), PRIMARY KEY(EmployeeID));

CREATE TABLE STORE (StoreName varchar(50),City varchar(50),Country varchar(50),Phone varchar(20),Fax varchar(20),EmailAddress varchar(100),Contact varchar(50), PRIMARY KEY(StoreName),Check (Country in  ('Hong Kong','India','Japan','Peru','Philippines','Singapore','United States')));

CREATE TABLE PURCHASE_ITEM (PurchaseItemId numeric IDENTITY(500,5),StoreName varchar(50),PurchasingAgentID numeric,PurchaseDate date,ItemDescription varchar(100),Category varchar(50),PriceUSD money, PRIMARY KEY(PurchaseItemID));

CREATE TABLE SHIPPER (ShipperId numeric IDENTITY(1,1),ShipperName varchar(100),Phone varchar(20),Fax varchar(20),EmailAddress varchar(100),Contact varchar(50), PRIMARY KEY(ShipperID));

CREATE TABLE SHIPMENT (ShipmentId numeric IDENTITY(100,1),ShipperID numeric,PurchasingAgentID numeric,ShipperInvoiceNumber numeric,Origin varchar(50),Destination varchar(50),ScheduledDepartureDate date,ActualDepartureDate date,EstimatedArrivalDate date, PRIMARY KEY(ShipmentID));

CREATE TABLE SHIPMENT_ITEM (ShipmentId numeric,ShipmentItemID numeric,PurchaseItemID numeric,InsuredValue money default 100, PRIMARY KEY(ShipmentID,ShipmentItemId));

CREATE TABLE SHIPMENT_RECEIPT (ReceiptNumber numeric IDENTITY(200001,1),ShipmentId numeric,PurchaseItemId numeric,ReceivingAgentID numeric,ReceiptDate date,ReceiptTime time,ReceiptQuantity numeric,IsReceivedUndamaged varchar(50),DamageNotes varchar(100), PRIMARY KEY(ReceiptNumber));

ALTER TABLE EMPLOYEE
ADD CONSTRAINT FK_EMPLOYEE_EMPLOYEE
FOREIGN KEY (SUPERVISOR) REFERENCES EMPLOYEE(EmployeeID);

ALTER TABLE PURCHASE_ITEM
ADD CONSTRAINT FK_STORE_PURCHASE_ITEM
FOREIGN KEY (StoreName) REFERENCES STORE(StoreName) ON UPDATE CASCADE;


ALTER TABLE PURCHASE_ITEM
ADD CONSTRAINT FK_EMPLOYEE_PURCHASE_ITEM
FOREIGN KEY (PurchasingAgentID) REFERENCES EMPLOYEE(EmployeeID) ON UPDATE CASCADE;


ALTER TABLE SHIPMENT
ADD CONSTRAINT FK_SHIPPER_SHIPMENT
FOREIGN KEY (ShipperID) REFERENCES SHIPPER(ShipperID) ON UPDATE CASCADE;

ALTER TABLE SHIPMENT
ADD CONSTRAINT FK_EMPLOYEE_SHIPMENT
FOREIGN KEY (PurchasingAgentID) REFERENCES EMPLOYEE(EmployeeID) ON UPDATE CASCADE;

ALTER TABLE SHIPMENT_ITEM
ADD CONSTRAINT FK_PURCHASE_ITEM_SHIPMENT_ITEM
FOREIGN KEY (PurchaseItemID) REFERENCES PURCHASE_ITEM(PurchaseItemID) ON DELETE CASCADE;

ALTER TABLE SHIPMENT_RECEIPT
ADD CONSTRAINT FK_SHIPMENT_SHIPMENT_RECEIPT
FOREIGN KEY (ShipmentID) REFERENCES SHIPMENT(ShipmentID) ON DELETE CASCADE;

ALTER TABLE SHIPMENT_RECEIPT
ADD CONSTRAINT FK_PURCHASE_ITEM_SHIPMENT_RECEIPT
FOREIGN KEY (PurchaseItemID) REFERENCES PURCHASE_ITEM(PurchaseItemID) ON DELETE CASCADE;


ALTER TABLE SHIPMENT_RECEIPT
ADD CONSTRAINT FK_SHIPMENT_RECEIPT_EMPLOYEE
FOREIGN KEY (ReceivingAgentID) REFERENCES EMPLOYEE(EmployeeID) ON UPDATE CASCADE;

ALTER TABLE SHIPMENT_ITEM
ADD CONSTRAINT FK_SHIPMENT_SHIPMENT_ITEM
FOREIGN KEY (ShipmentID) REFERENCES SHIPMENT(ShipmentID) ON DELETE CASCADE;