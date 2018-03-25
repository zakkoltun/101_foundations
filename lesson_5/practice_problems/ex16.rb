HEX_VALUES = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)

def random_uuid()
  uuid_digits = []
  32.times do |_|
    rand_index = rand(16)
    uuid_digits << HEX_VALUES[rand_index]
  end
  uuid = ''
  sections = [8, 4, 4, 4, 12]
  sections.each do |num_digits|
    uuid << uuid_digits.shift(num_digits).join
    uuid << '-' if uuid_digits.size > 12
  end
  uuid
end

p random_uuid