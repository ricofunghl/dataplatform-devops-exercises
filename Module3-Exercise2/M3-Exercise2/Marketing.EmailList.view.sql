CREATE VIEW Marketing.EmailList
AS

SELECT 
CustomerId, FirstName, LastName, Email, OptIn
from Booking.Customers
where OptIn = 1





