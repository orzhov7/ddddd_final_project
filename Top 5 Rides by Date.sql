SELECT Ride_Date, Rides_Taken
   FROM
     (SELECT Ride_Date, Rides_Taken, 
                  @date_rank := IF(@current_ride_date = Ride_Date, @date_rank + 1, 1) AS date_rank,
                  @current_ride_date := Ride_Date 
       FROM daily_entries
       ORDER BY Ride_Date, Rides_Taken DESC
     ) ranked
   WHERE Ride_Date > '2017-12-31' AND
		 date_rank <= 5;