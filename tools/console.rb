require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

Startup.new("Talent", "Plant Music", "PM")
Startup.new("Exercise","Jog Tracker", "JT")
Startup.new("Party Time", "Alcohol Limit", "AA")
Startup.new("Nature", "Insect ID", "II")

def rand_startup 
  Startup.all.sample
end

def rand_worth
  rand(900_000_000..3_000_000_000)
end

def rand_investment
  rand(200_000..2_500_000_000)
end

def rand_cap 
  VentureCapitalist.all.sample
end

VentureCapitalist.new("Robert Milf", rand_worth)
VentureCapitalist.new("Patricia Voila", rand_worth)
VentureCapitalist.new("Huffington Bula", rand_worth)
VentureCapitalist.new("Bouregard Jeshua", rand_worth)


type = ["Angel", "Pre-Seed", "Seed", "Series A", "Series B", "Series C"]
type.each {|type| FundingRound.new(rand_startup, rand_cap, type, rand_investment)}

puts "=========================="
puts "STARTUPS!!!"
Startup.all.each {|up| puts up.name}
puts "=========================="
puts "Pivot changes domain and name"
puts "The domain WAS *#{Startup.all[0].domain}* and the name WAS *#{Startup.all[0].name}*..."
Startup.all[0].pivot("Music", "Leaf Songs")
puts "The domain IS *#{Startup.all[0].domain}* and the name IS *#{Startup.all[0].name}*!!!"
puts "=========================="
puts "VENTURISTS"
VentureCapitalist.all
puts "=========================="
puts "Venturists in the Tres-Comma Club"
VentureCapitalist.tres_commas_club.each {|cap| puts cap.name}
puts "=========================="
puts "FOUND THE FOUNDER!!"
puts Startup.find_by_founder("PM")
puts Startup.find_by_founder("AA")
puts "=========================="
puts "Startup Domains"
puts Startup.domains
puts "=========================="
puts "All Funding Rounds"
puts FundingRound.all












#binding.pry
0 #leave this here to ensure binding.pry isn't the last line