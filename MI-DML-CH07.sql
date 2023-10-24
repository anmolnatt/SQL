--D
UPDATE STORE set City='NYC' where City='New York City'


--E
insert into SHIPMENT (ShipperID,PurchasingAgentID,ShipperInvoiceNumber,Origin,Destination,ScheduledDepartureDate,ActualDepartureDate,EstimatedArrivalDate) values (1,103,1111111,'Manila','Seattle','03-Jan-19','03-Jan-19','11-Mar-19')
insert into SHIPMENT (ShipperID,PurchasingAgentID,ShipperInvoiceNumber,Origin,Destination,ScheduledDepartureDate,ActualDepartureDate,EstimatedArrivalDate) values (3,104,3684575,'Lima','Portland','11-Jan-19','19-Jan-19','23-Aug-19')


insert into SHIPMENT_ITEM values (106,1,525,90000)
insert into SHIPMENT_ITEM values (106,2,560,10000)
insert into SHIPMENT_ITEM values (107,1,535,150000)
insert into SHIPMENT_ITEM values (107,2,540,12500)
insert into SHIPMENT_ITEM values (107,3,565,1500)

select * from SHIPMENT
select * from SHIPMENT_ITEM


delete from SHIPMENT where ShipmentId=106
delete from SHIPMENT where ShipmentId=107