def count_occurrences(vehicles)
  vehicle_counts = {}
  vehicles.each do |vehicle|
    if vehicle_counts.include? vehicle
      vehicle_counts[vehicle] += 1
    else
      vehicle_counts[vehicle] = 1
    end
  end

  vehicle_counts.each do |k, v|
    puts "#{k} => #{v}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)


# Notes: should have made variables more generic, could use array.count(element) instead of adding