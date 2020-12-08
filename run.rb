require 'pry'

spicy_foods = [
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
]

def print_spicy_foods(spicy_foods)

  spicy_foods.each do |current_hash|

    pepper_string = "🌶"
    pepper_string = pepper_string * current_hash[:heat_level]

    current_string  = "#{current_hash[:name]} (#{current_hash[:cuisine]}) | Heat Level: #{pepper_string}"

     puts current_string
  end

  return

end




def get_names(spicy_foods)

  spicy_foods.map do |current_hash| 
    current_hash[:name]
  end

end





def spiciest_foods(spicy_foods)

  spicy_foods.select{ |current_hash| current_hash[:heat_level] > 5}
  
end




def get_spicy_food_by_cuisine(spicy_foods, cuisine)

  spicy_foods.find {|i| i[:cuisine] == cuisine}


end



# BONUS Deliverables
def print_spiciest_foods(spicy_foods) #pass in your array from spicest_foods methodd 
  
   sorted_spiciest_food = spiciest_foods(spicy_foods)  #returns an array of just the spiciest food over 5 and then assigns it to variable 

   print_spicy_foods(sorted_spiciest_food) #runs the new sorted array through the print_spicy_foods method to get right string output 

end

def average_heat_level(spicy_foods)
  total = 0
  spicy_foods.each do |current_hash|
    total = total + current_hash[:heat_level]
  end

  average_level = total / spicy_foods.count

end

# Use this to test your methods
# run "ruby run.rb" and try calling the methods from the console
binding.pry
"pls"