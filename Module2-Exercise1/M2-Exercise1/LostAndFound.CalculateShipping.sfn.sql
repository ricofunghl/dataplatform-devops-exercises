DROP FUNCTION IF EXISTS LostAndFound.CalculateShipping;
GO
CREATE FUNCTION LostAndFound.CalculateShipping(@HotelState varchar(50),@ShippingState varchar(50))
RETURNS TABLE
AS
RETURN
  SELECT CASE WHEN @HotelState = @ShippingState THEN 10 ELSE 25.0 END AS shipping;
GO