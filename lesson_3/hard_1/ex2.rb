greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # => "hi there"

# informal_greeting points to the actual key/value object inside greetings, and << mutates