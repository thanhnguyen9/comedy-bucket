

  schedules = [
    {
      place_name: "Hampton Coliseum",
      location: "Hampton, VA",
      time: "December 30 2014, 07:00",
      artist_id: 21
    },
    {
      place_name: "Hampton Coliseum",
      location: "Hampton, VA",
      time: "December 30 2014, 10:30",
      artist_id: 21
    },
    {
      place_name: "Mohegun Sun Arena",
      location: "Uncasvillle, CT",
      time: "April 18 2015, 08:00",
      artist_id: 21
    }
  ]

  schedules.each do |schedule|
    Schedule.create place_name: schedule[:place_name],
                    location: schedule[:location],
                    time: schedule[:time],
                    artist_id: schedule[:artist_id]
  end
