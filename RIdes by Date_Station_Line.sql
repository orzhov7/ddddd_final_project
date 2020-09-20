select  d.Ride_Date, l.Station_Name, li.Line_Name, d.Rides_Taken
	FROM daily_entries d
    LEFT JOIN l_stops l
    ON d.Map_ID = l.Map_ID
    LEFT JOIN line_group li
    ON l.Map_ID = li.Map_ID
		WHERE d.Ride_Date > '2017-12-31'
    ORDER BY d.Ride_Date,
			 d.Rides_Taken DESC;