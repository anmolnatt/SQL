insert into EMPLOYEE (LastName,FirstName,Department,Position,OfficePhone,OfficeFax,EmailAddress) values ('Morgan','James','Executive','CEO','310-208-1401','310-208-1499','James.Morgan@morganimporting.com');
insert into EMPLOYEE (LastName,FirstName,Department,Position,Supervisor,OfficePhone,OfficeFax,EmailAddress) values ('Morgan','Jessica','Executive','CFO',101,'310-208-1402','310-208-1499','Jessica.Morgan@morganimporting.com');
insert into EMPLOYEE (LastName,FirstName,Department,Position,Supervisor,OfficePhone,OfficeFax,EmailAddress) values ('Williams','David','Purchasing','Purchasing Manager',101,'310-208-1434','310-208-1498','David.Williams@morganimporting.com');
insert into EMPLOYEE (LastName,FirstName,Department,Position,Supervisor,OfficePhone,OfficeFax,EmailAddress) values ('Gilbertson','Teri','Purchasing','Purchasing Agent',103,'310-208-1435','310-208-1498','Teri.Gilbertson@morganimporting.com');
insert into EMPLOYEE (LastName,FirstName,Department,Position,Supervisor,OfficePhone,OfficeFax,EmailAddress) values ('Wright','James','Receiving','Receiving Supervisor',101,'310-208-1456','310-208-1497','James.Wright@morganimporting.com');
insert into EMPLOYEE (LastName,FirstName,Department,Position,Supervisor,OfficePhone,OfficeFax,EmailAddress) values ('Douglas','Torn','Receiving','Receiving Agent',105,'310-208-1457','310-208-1497','Torn.Douglas@morganimporting.com');



insert into STORE (StoreName,City,Country,Phone,Fax,EmailAddress,Contact) values ('Eastern Sales','Singapore','Singapore','65-543-1233','65-543-1239','Sales@EasternSales.com.sg','Jeremy');
insert into STORE (StoreName,City,Country,Phone,Fax,EmailAddress,Contact) values ('Eastern Treasures','Manila','Philippines','63-2-654-2344','63-2-654-2349','Sales@EasternTreasures.com.ph','Gracielle');
insert into STORE (StoreName,City,Country,Phone,Fax,EmailAddress,Contact) values ('Jade Antiques','Singapore','Singapore','65-543-3455','65-543-3459','Sales@JadeAntiques.com.sg','Swee Lai');
insert into STORE (StoreName,City,Country,Phone,Fax,EmailAddress,Contact) values ('Andes Treasures','Lima','Peru','51-14-765-4566','51-14-765-4569','Sales@AndesTreasures.com.pe','Juan Carlos');
insert into STORE (StoreName,City,Country,Phone,Fax,EmailAddress,Contact) values ('Eastern Sales Hong Kong','Hong Kong','Hong Kong','852-876-5677','852-876-5679','Sales@EasternSales.com.hk','Sam');
insert into STORE (StoreName,City,Country,Phone,Fax,EmailAddress,Contact) values ('Eastern Treasures India','New Delhi','India','91-11-987-6788','91-11-987-6789','Sales@EasternTreasures.com.in','Deepinder');
insert into STORE (StoreName,City,Country,Phone,Fax,EmailAddress,Contact) values ('Eastern Imports','New York City','United States','800-432-8766','800-432-8769','Sales@EuropeanImports.com.sg','Marcello');




insert into PURCHASE_ITEM (StoreName,PurchasingAgentID,PurchaseDate,ItemDescription,Category,PriceUSD) values ('Eastern Treasures',101,'12/10/2017','Antique Large Bureaus','Furniture',13415.00);
insert into PURCHASE_ITEM (StoreName,PurchasingAgentID,PurchaseDate,ItemDescription,Category,PriceUSD) values ('Eastern Treasures',102,'12/12/2017','Porcelain Lamps','Lamps',13300.00);
insert into PURCHASE_ITEM (StoreName,PurchasingAgentID,PurchaseDate,ItemDescription,Category,PriceUSD) values ('Eastern Sales Hong Kong',104,'12/15/2017','Gold Rim Design China','Tableware',38500.00);
insert into PURCHASE_ITEM (StoreName,PurchasingAgentID,PurchaseDate,ItemDescription,Category,PriceUSD) values ('Eastern Sales Hong Kong',104,'12/16/2017','Gold Rim Design Serving Dishes','Tableware',3200.00);
insert into PURCHASE_ITEM (StoreName,PurchasingAgentID,PurchaseDate,ItemDescription,Category,PriceUSD) values ('Eastern Treasures',102,'4/7/2018','QE Dining Set','Furniture',14300.00);
insert into PURCHASE_ITEM (StoreName,PurchasingAgentID,PurchaseDate,ItemDescription,Category,PriceUSD) values ('Jade Antiques',103,'5/18/2018','Mask Linen','Linens',88545.00);
insert into PURCHASE_ITEM (StoreName,PurchasingAgentID,PurchaseDate,ItemDescription,Category,PriceUSD) values ('Eastern Sales',103,'5/19/2018','Large Marks','Decorations',22135.00);
insert into PURCHASE_ITEM (StoreName,PurchasingAgentID,PurchaseDate,ItemDescription,Category,PriceUSD) values ('Jade Antiques',104,'5/20/2018','Willow Design China','Tableware',147575.00);
insert into PURCHASE_ITEM (StoreName,PurchasingAgentID,PurchaseDate,ItemDescription,Category,PriceUSD) values ('Jade Antiques',104,'5/20/2018','Willow Design Serving Dishes','Tableware',12040.00);
insert into PURCHASE_ITEM (StoreName,PurchasingAgentID,PurchaseDate,ItemDescription,Category,PriceUSD) values ('Andes Treasures',102,'6/14/2018','Woven Goods','Decorations',1200.00);
insert into PURCHASE_ITEM (StoreName,PurchasingAgentID,PurchaseDate,ItemDescription,Category,PriceUSD) values ('Andes Treasures',101,'6/16/2018','Antique Leather Chairs','Furniture',5375.00);
insert into PURCHASE_ITEM (StoreName,PurchasingAgentID,PurchaseDate,ItemDescription,Category,PriceUSD) values ('Jade Antiques',104,'7/15/2018','Willow Design Serving Dishes','Tableware',4500.00);
insert into PURCHASE_ITEM (StoreName,PurchasingAgentID,PurchaseDate,ItemDescription,Category,PriceUSD) values ('Eastern Treasures',103,'7/17/2018','Large Bureaus','Furniture',9500.00);
insert into PURCHASE_ITEM (StoreName,PurchasingAgentID,PurchaseDate,ItemDescription,Category,PriceUSD) values ('Jade Antiques',104,'7/20/2018','Brass Lamps','Lamps',1200.00);



insert into SHIPPER (ShipperName,Phone,Fax,EmailAddress,Contact) values ('ABC Trans-Oceanic','800-234-5656','800-234-5659','Sales@ABCTransOceanic.com','Jonathan');
insert into SHIPPER (ShipperName,Phone,Fax,EmailAddress,Contact) values ('International','800-123-8898','800-123-8899','Sales@International.com','Marylin');
insert into SHIPPER (ShipperName,Phone,Fax,EmailAddress,Contact) values ('Worldwide','800-123-45467','800-123-4569','Sales@worldwide.com','Jose');



insert into SHIPMENT (ShipperID,PurchasingAgentID,ShipperInvoiceNumber,Origin,Destination,ScheduledDepartureDate,ActualDepartureDate,EstimatedArrivalDate) values (1,103,2017551,'Manila','Los Angeles','10-Dec-17','10-Dec-17','15-Mar-18');
insert into SHIPMENT (ShipperID,PurchasingAgentID,ShipperInvoiceNumber,Origin,Destination,ScheduledDepartureDate,ActualDepartureDate,EstimatedArrivalDate) values (1,104,2018012,'Hong Kong','Seattle','10-Jan-18','12-Jan-18','20-Mar-18');
insert into SHIPMENT (ShipperID,PurchasingAgentID,ShipperInvoiceNumber,Origin,Destination,ScheduledDepartureDate,ActualDepartureDate,EstimatedArrivalDate) values (3,103,49100300,'Manila','Los Angeles','5-May-18','5-May-18','17-Jun-18');
insert into SHIPMENT (ShipperID,PurchasingAgentID,ShipperInvoiceNumber,Origin,Destination,ScheduledDepartureDate,ActualDepartureDate,EstimatedArrivalDate) values (2,104,399400,'Singapore','Portland','2-Jun-18','4-Jun-18','17-Jul-18');
insert into SHIPMENT (ShipperID,PurchasingAgentID,ShipperInvoiceNumber,Origin,Destination,ScheduledDepartureDate,ActualDepartureDate,EstimatedArrivalDate) values (3,103,84899440,'Lima','Los Angeles','10-Jul-18','10-Jul-18','28-Jul-18');
insert into SHIPMENT (ShipperID,PurchasingAgentID,ShipperInvoiceNumber,Origin,Destination,ScheduledDepartureDate,ActualDepartureDate,EstimatedArrivalDate) values (2,104,488955,'Singapore','Portland','5-Aug-18','9-Aug-18','11-Sep-18');



insert into SHIPMENT_ITEM values (100,1,500,15000);
insert into SHIPMENT_ITEM values (100,2,505,15000);
insert into SHIPMENT_ITEM values (101,1,510,40000);
insert into SHIPMENT_ITEM values (101,2,515,3500);
insert into SHIPMENT_ITEM values (102,1,520,15000);
insert into SHIPMENT_ITEM values (103,1,525,90000);
insert into SHIPMENT_ITEM values (103,2,530,25000);
insert into SHIPMENT_ITEM values (103,3,535,150000);
insert into SHIPMENT_ITEM values (103,4,540,12500);
insert into SHIPMENT_ITEM values (104,1,545,12500);
insert into SHIPMENT_ITEM values (104,2,550,5500);
insert into SHIPMENT_ITEM values (105,1,555,4500);
insert into SHIPMENT_ITEM values (105,2,560,10000);
insert into SHIPMENT_ITEM values (105,3,565,1500);



insert into SHIPMENT_RECEIPT (ShipmentId,PurchaseItemId,ReceivingAgentID,ReceiptDate,ReceiptTime,ReceiptQuantity,IsReceivedUndamaged) values (100,500,105,'17-Mar-18','10:00AM',3,'Yes');
insert into SHIPMENT_RECEIPT (ShipmentId,PurchaseItemId,ReceivingAgentID,ReceiptDate,ReceiptTime,ReceiptQuantity,IsReceivedUndamaged) values (105,505,105,'17-Mar-18','10:00AM',50,'Yes');
insert into SHIPMENT_RECEIPT (ShipmentId,PurchaseItemId,ReceivingAgentID,ReceiptDate,ReceiptTime,ReceiptQuantity,IsReceivedUndamaged) values (100,510,105,'23-Mar-18','3:30PM',100,'Yes');
insert into SHIPMENT_RECEIPT (ShipmentId,PurchaseItemId,ReceivingAgentID,ReceiptDate,ReceiptTime,ReceiptQuantity,IsReceivedUndamaged) values (101,515,105,'23-Mar-18','3:30PM',10,'Yes');
insert into SHIPMENT_RECEIPT (ShipmentId,PurchaseItemId,ReceivingAgentID,ReceiptDate,ReceiptTime,ReceiptQuantity,IsReceivedUndamaged,DamageNotes) values (101,520,106,'19-Jun-18','10:15AM',1,'NO','One leg of one chair broken');
insert into SHIPMENT_RECEIPT (ShipmentId,PurchaseItemId,ReceivingAgentID,ReceiptDate,ReceiptTime,ReceiptQuantity,IsReceivedUndamaged) values (102,525,106,'20-Jul-18','2:20AM',1000,'Yes');
insert into SHIPMENT_RECEIPT (ShipmentId,PurchaseItemId,ReceivingAgentID,ReceiptDate,ReceiptTime,ReceiptQuantity,IsReceivedUndamaged) values (103,530,106,'20-Jul-18','2:20AM',100,'Yes');
insert into SHIPMENT_RECEIPT (ShipmentId,PurchaseItemId,ReceivingAgentID,ReceiptDate,ReceiptTime,ReceiptQuantity,IsReceivedUndamaged) values (103,535,106,'20-Jul-18','2:20AM',100,'Yes');
insert into SHIPMENT_RECEIPT (ShipmentId,PurchaseItemId,ReceivingAgentID,ReceiptDate,ReceiptTime,ReceiptQuantity,IsReceivedUndamaged) values (103,540,106,'20-Jul-18','2:20AM',10,'Yes');
insert into SHIPMENT_RECEIPT (ShipmentId,PurchaseItemId,ReceivingAgentID,ReceiptDate,ReceiptTime,ReceiptQuantity,IsReceivedUndamaged) values (103,545,105,'29-Jul-18','9:00PM',100,'Yes');
insert into SHIPMENT_RECEIPT (ShipmentId,PurchaseItemId,ReceivingAgentID,ReceiptDate,ReceiptTime,ReceiptQuantity,IsReceivedUndamaged) values (104,550,105,'29-Jul-18','9:00PM',5,'Yes');
insert into SHIPMENT_RECEIPT (ShipmentId,PurchaseItemId,ReceivingAgentID,ReceiptDate,ReceiptTime,ReceiptQuantity,IsReceivedUndamaged) values (104,555,106,'14-Sep-18','2:45PM',4,'Yes');
insert into SHIPMENT_RECEIPT (ShipmentId,PurchaseItemId,ReceivingAgentID,ReceiptDate,ReceiptTime,ReceiptQuantity,IsReceivedUndamaged) values (105,560,106,'14-Sep-18','2:45PM',1,'Yes');
insert into SHIPMENT_RECEIPT (ShipmentId,PurchaseItemId,ReceivingAgentID,ReceiptDate,ReceiptTime,ReceiptQuantity,IsReceivedUndamaged,DamageNotes) values (105,565,106,'14-Sep-18','2:45PM',10,'NO','Base of one lamp scratched');