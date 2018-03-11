flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

puts "Flintstones before: #{flintstones}"

flintstones.delete_if {|key, value| key != "Barney" }

puts "Flintstones after: #{flintstones}"
