def square_array(array)
  # Use an Enumerable to square every element in the passed in array
  # Return a new array of the results
  array.map do |element|
    element * element
  end
end

square_array([1,2,3,4])
  
def summon_captain_planet(planeteer_calls)
  # Use an Enumerable to capitalize and add '!' to every element in the passed in array
  # Return a new array of the results
  new_array = []
  
  planeteer_calls.each do |el| 
    new_array << "#{el.capitalize}!"
  end
  new_array
end

calls = ["earth", "wind", "fire", "water", "heart"]
summon_captain_planet(calls)

def long_planeteer_calls(planeteer_calls)
  # Use an Enumerable to check if any string in the passed in array is greater than 4 characters long
  # Return the boolean result of this check
  planeteer_calls.any? { |call| call.length > 4 } 
end

other_stuff = ["Plants!", "Humans!", "Mushrooms!", "Brains!"]
long_planeteer_calls(other_stuff)

def find_valid_calls(planeteer_calls)
  # Use an Enumerable to check if any elements in the passed in array match the valid calls listed above 
  # Return the first valid call found, or return nil if no valid calls are found
  valid_calls = ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
  empty_array = []
  
  planeteer_calls.find do |call|
    valid_calls.find do |testing|
      if call == testing
        p call
        p testing
      else
        return nil
      end
      empty_array
    end
  end
end


mixed_calls = ["Wood!", "Wind!", "Brass!", "Enamel!", "Heart!"]
find_valid_calls(mixed_calls)