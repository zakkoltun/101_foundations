def running_total(nums)
  sum = 0
  totals_array = []
  nums.each do |num|
    sum += num
    totals_array << sum
  end
  totals_array
end

p running_total [2, 5, 13]
p running_total [14, 11, 7, 15, 20]
p running_total [3]
p running_total []