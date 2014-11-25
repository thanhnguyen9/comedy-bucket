
  schedules = [ 

         {
           place_name: "Planet Hollywood",
           location: "Las Vegas, NV",
           time: "Dec 13, 2014, 09:30 PM",
           artist_id: 15
         },
          {
            place_name: "Harrahs Cherokee Resort",
            location: "Cherokee, NC",
            time: "Jan 03, 2015, 07:30 PM",
            artist_id: 15
          },
           {
             place_name: "Fabulous Fox Theatre",
             location: "Atlanta, GA",
             time: "Apr 18, 2015, 07:30 PM",
             artist_id: 15
           },
          {
            place_name: "Pala Casino",
            location: "Los Angeles, CA",
            time: "Jan 10, 2015, 07:30 PM",
            artist_id: 20
                            },
                             {
                               place_name: "MotoCity Casino Hotel",
                               location: "San Diego, CA",
                               time: "Jan 22, 2015, 08:00 PM",
                               artist_id: 20
                             },
                              {
                                place_name: "MotoCity Casino Hotel",
                                location: "San Diego, CA",
                                time: "Jan 23, 2015, 08:00 PM",
                                artist_id: 20
                              },
                               {
                                 place_name: "IP Casino Resort and Spa",
                                 location: "Dallas, Texas",
                                 time: "Jan 30, 2015, 08:00 PM",
                                 artist_id: 20
                               },
                                                 {
                                                   place_name: "Amarillo Civic Center Coliseum",
                                                   location: "Austin, TX",
                                                   time: "Jan 09, 2015, 07:00 PM",
                                                   artist_id: 27
                                                 },
                                                  {
                                                    place_name: "Bayou Music Center",
                                                    location: "Houston, TX",
                                                    time: "Jan 10, 2015, 07:00 PM",
                                                    artist_id: 27
                                                  },
                                                   {
                                                     place_name: "Ovens Auditorium",
                                                     location: "Charlotte, NC",
                                                     time: "Jan 15, 2015, 07:00 PM",
                                                     artist_id: 27
                                                   }
  ]

  schedules.each do |schedule|
    Schedule.create place_name: schedule[:place_name],
                    location: schedule[:location],
                    time: schedule[:time],
                    artist_id: schedule[:artist_id]
  end
