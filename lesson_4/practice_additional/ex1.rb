flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_positions = {}

flintstones.each_with_index do |name, index|
  flintstones_positions[name] = index
end

p flintstones_positions