--F
CREATE VIEW EmployeeSupervisorView AS
SELECT E1.LastName AS EmployeeLastName, E1.FirstName AS EmployeeFirstName, E1.Position, E2.LastName AS SupervisorLastName, E2.FirstName AS SupervisorFirstName
FROM EMPLOYEE E1 left outer join Employee E2 on E1.Supervisor=E2.EmployeeID
WHERE E2.Supervisor is null;

select * from EmployeeSupervisorView;



--G
CREATE VIEW PurchaseSummaryView AS
SELECT PURCHASE_ITEM.PurchaseItemId,PURCHASE_ITEM.PurchaseDate,PURCHASE_ITEM.ItemDescription, PURCHASE_ITEM.PriceUSD
FROM PURCHASE_ITEM
WHERE PurchaseItemId IS NOT NULL;

select * from PurchaseSummaryView;



--H
CREATE VIEW StorePurchaseHistoryView AS
SELECT STORE.StoreName,STORE.Phone,STORE.Contact,PURCHASE_ITEM.PurchaseItemId,PURCHASE_ITEM.PurchaseDate,PURCHASE_ITEM.ItemDescription, PURCHASE_ITEM.PriceUSD
FROM STORE,PURCHASE_ITEM
WHERE STORE.StoreName=PURCHASE_ITEM.StoreName;

select * from StorePurchaseHistoryView;



--I
IF OBJECT_ID('[dbo].[StoreContactAndPhone]') IS NOT NULL
BEGIN
	DROP FUNCTION dbo.StoreContactAndPhone
END
GO

CREATE FUNCTION dbo.StoreContactAndPhone (
	@contact VARCHAR(255)
	,@phone VARCHAR(255)
)
RETURNS VARCHAR(512)
AS 
BEGIN
	DECLARE @returnValue VARCHAR(512)
	SET @returnValue = TRIM(@contact) + ': ' + TRIM(@phone)

	RETURN @returnValue
END
GO

CREATE VIEW StoreContactPurchaseHistoryView AS
SELECT STORE.StoreName,dbo.StoreContactAndPhone(Store.Contact,Store.Phone) AS StoreContactAndPhone,PURCHASE_ITEM.PurchaseItemId,PURCHASE_ITEM.PurchaseDate,PURCHASE_ITEM.ItemDescription, PURCHASE_ITEM.PriceUSD
FROM STORE,PURCHASE_ITEM
WHERE STORE.StoreName=PURCHASE_ITEM.StoreName;


select * from StoreContactPurchaseHistoryView;

