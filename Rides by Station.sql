select  d.Ride_Date, l.Station_Name, d.Rides_Taken
	FROM daily_entries d
    LEFT JOIN l_stops l
    ON d.Map_ID = l.Map_ID
		WHERE d.Ride_Date > '2017-12-31'
    ORDER BY d.Ride_Date,
			 d.Rides_Taken DESC;