collection =
{ data: { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}

# Retrieve the capacity of room 201 and store it in a variable.

 # collection[:data][:rooms].each do |number|
 #  if number[:room_number] == '201'
 #  puts " The capacity of room 201 is #{number[:capacity]}"
 #  end
 # end

capacity = 0
collection[:data][:rooms].each {|object| if object[:room_number] == '201' then capacity = object[:capacity] end}

puts capacity.inspect


 # Find all the events taking place in room 201. Iterate through them and print "ok" if the number of planned attendees will fit in the room.


puts "*"*33
rooms = collection[:data][:rooms]
room_201_id = 0
room201_capacity = 0
rooms.each { |object|
  if object[:room_number] == '201'
  room_201_id =  object[:id]
  room201_capacity = object[:capacity]
  end
}
collection[:data][:events].each {|object|
  if object[:room_id] == 1 && room201_capacity >= object[:attendees]
    puts 'OK' end}
