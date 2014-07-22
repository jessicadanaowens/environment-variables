# - Write a method that prints out "Migrate the [environment] database", where [environment] is
# replaced by the value of the RACK_ENV environment variable.

def print_database
  ENV['RACK_ENV'] = 'test'

  print "Migrate the #{ENV['RACK_ENV']} database"

end


# - Write a method that prints out "FEED ME" if the HUNGRY environment variable is true and
#   prints out "NOT NOW" otherwise.

def feed_me
  if ENV['HUNGRY'] == true
    print "FEED ME"
  else
    print "NOT NOW"
  end
end

# puts "Favorite color in parent starts as: #{ENV['FAVORITE_COLOR']}"

def favorite_color
  puts "Favorite color in parent starts as: #{ENV['FAVORITE_COLOR']}"
end



fork do
  puts "Favorite color in child starts as: #{ENV['FAVORITE_COLOR']}"
  ENV["FAVORITE_COLOR"] = 'yellow'
  puts "Favorite color in child ends as: #{ENV['FAVORITE_COLOR']}"
end

puts "Favorite color in parent ends as: #{ENV['FAVORITE_COLOR']}"
