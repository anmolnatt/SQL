--A
SELECT *
FROM dbo.ITEM;

SELECT *
FROM dbo.SHIPMENT;

SELECT *
FROM dbo.SHIPMENT_ITEM;


--B
SELECT ShipmentID,ShipperName,ShipperInvoiceNumber
FROM dbo.SHIPMENT;


--C
SELECT ShipmentID,ShipperName,ShipperInvoiceNumber
FROM dbo.SHIPMENT
WHERE InsuredValue>10000.00;


--D
SELECT ShipmentID,ShipperName,ShipperInvoiceNumber
FROM dbo.SHIPMENT
WHERE ShipperName LIKE 'AB%';


--E
SELECT ShipmentID,ShipperName,ShipperInvoiceNumber,ArrivalDate
FROM dbo.SHIPMENT
WHERE MONTH(DepartureDate)=12;


--F
SELECT ShipmentID,ShipperName,ShipperInvoiceNumber,ArrivalDate
FROM dbo.SHIPMENT
WHERE DAY(DepartureDate)=10;


--G
SELECT MAX(InsuredValue) AS MaximumInsuredvalue, MIN(InsuredValue) AS MinimumInsuredValue
FROM dbo.SHIPMENT;


--H
SELECT AVG(InsuredValue) AS AverageInsuredvalue
FROM dbo.SHIPMENT;


--I
SELECT COUNT(*) AS CountOfShipments
FROM dbo.SHIPMENT;


--J
SELECT ItemID,Description,Store,LocalCurrencyAmount*ExchangeRate AS USCurrencyAmount
FROM dbo.ITEM;


--K
SELECT City,Store
FROM dbo.ITEM
GROUP BY City,Store


--L
SELECT City,Store,COUNT(*) AS NumberOfPurchases
FROM dbo.ITEM
GROUP BY City,Store;


--M
SELECT ShipperName,ShipmentID,DepartureDate
FROM dbo.SHIPMENT
WHERE ShipmentID IN (SELECT ShipmentID FROM dbo.SHIPMENT_ITEM WHERE Value>=1000.00) 
ORDER BY dbo.SHIPMENT.ShipperName ASC, dbo.SHIPMENT.DepartureDate DESC;


--N
SELECT ShipperName,dbo.SHIPMENT.ShipmentID,DepartureDate
FROM dbo.SHIPMENT 
JOIN dbo.SHIPMENT_ITEM
ON (dbo.SHIPMENT.ShipmentID=dbo.SHIPMENT_ITEM.ShipmentID AND Value>=1000)
ORDER BY dbo.SHIPMENT.ShipperName ASC, dbo.SHIPMENT.DepartureDate DESC;


--O
SELECT dbo.SHIPMENT.ShipperName,dbo.SHIPMENT.ShipmentID,dbo.SHIPMENT.DepartureDate
FROM dbo.SHIPMENT
WHERE dbo.SHIPMENT.ShipmentID IN (SELECT dbo.SHIPMENT_ITEM.ShipmentID FROM dbo.SHIPMENT_ITEM WHERE itemid IN (SELECT dbo.ITEM.ItemID FROM dbo.ITEM WHERE city='Singapore'))
ORDER BY dbo.SHIPMENT.ShipperName ASC, dbo.SHIPMENT.DepartureDate DESC;


--P
SELECT dbo.SHIPMENT.ShipperName,dbo.SHIPMENT.ShipmentID,dbo.SHIPMENT.DepartureDate
FROM dbo.SHIPMENT 
CROSS JOIN dbo.SHIPMENT_ITEM 
CROSS JOIN dbo.ITEM 
WHERE dbo.ITEM.City='Singapore' AND dbo.SHIPMENT.ShipmentID=dbo.SHIPMENT_ITEM.ShipmentID AND dbo.SHIPMENT_ITEM.ItemID=dbo.ITEM.ItemID 
ORDER BY dbo.SHIPMENT.ShipperName ASC, dbo.SHIPMENT.DepartureDate DESC;


--Q
SELECT S.ShipperName,S.ShipmentID,S.DepartureDate
FROM dbo.SHIPMENT S 
JOIN dbo.SHIPMENT_ITEM SI ON S.ShipmentID=SI.ShipmentID 
JOIN dbo.ITEM I ON I.ItemID=SI.ItemID AND I.City='Singapore'
ORDER BY S.ShipperName ASC, S.DepartureDate DESC;

--R
SELECT dbo.SHIPMENT.ShipperName,dbo.SHIPMENT.ShipmentID,dbo.SHIPMENT.DepartureDate,dbo.SHIPMENT_ITEM.Value
FROM dbo.SHIPMENT 
JOIN dbo.SHIPMENT_ITEM ON dbo.SHIPMENT.ShipmentID=dbo.SHIPMENT_ITEM.ShipmentID
JOIN dbo.ITEM ON dbo.ITEM.ItemID=dbo.SHIPMENT_ITEM.ItemID  
WHERE dbo.SHIPMENT_ITEM.ItemID IN (SELECT ItemID FROM dbo.ITEM WHERE City='Singapore')
ORDER BY dbo.SHIPMENT.ShipperName ASC, dbo.SHIPMENT.DepartureDate DESC;
