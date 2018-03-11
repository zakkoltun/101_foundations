ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

spot_present = ages.include? "Spot"
spot_present_2 = ages.has_key? "Spot"
spot_present_3 = ages.key? "Spot"
spot_present_4 = ages.member? "Spot"
spot_present_5 = !!ages.assoc("Spot")

puts spot_present
puts spot_present_2
puts spot_present_3
puts spot_present_4
puts spot_present_5