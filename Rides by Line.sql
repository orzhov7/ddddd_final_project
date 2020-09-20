select  d.Ride_Date, li.Line_Name, d.Rides_Taken
	FROM daily_entries d
    LEFT JOIN line_group li
    ON d.Map_ID = li.Map_ID
		WHERE d.Ride_Date > '2017-12-31'
    ORDER BY d.Ride_Date,
			 d.Rides_Taken DESC;