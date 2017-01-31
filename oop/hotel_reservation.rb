# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
  reservation = HotelReservation.new(customer_name:"Berry", date:"2/07/2020", room_number:"232")
  puts 'the given reservation'
  p reservation

  puts 'Changing the room number'
  result = reservation.room_number=('100')
  puts 'Here is the new room number...'
  puts result

  if result == '100'
    puts 'PASS'
  else 
    puts 'FAIL'
  end
  puts
  puts 'the method returns...'
  result = reservation.add_a_fridge
  puts 'Here is the add fridge'
  puts result
  if reservation.amenities.include?("fridge")
    puts 'PASS'
  else 
    puts 'FAIL'
  end
  puts 
  puts 'Adding cribe method'
  result = reservation.add_a_crib
  puts 'Here is the added cribe'
  puts result
  if reservation.amenities.include?("crib")
    puts 'PASS'
  else 
    puts 'FAIL'
  end
  puts 
  if reservation.amenities.include?("crib")
    puts 'PASS'
  else 
    puts 'FAIL'
  end
  puts 
  result = reservation.add_a_custom_amenity('TV')
  puts 'Your method returned...'
  puts result 
  if reservation.amenities.include?('TV')
    puts 'PASS'
  else
    puts 'FAIL'
  end
end





