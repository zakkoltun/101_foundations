hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = %w(a e i o u)

hsh.each do |_, words|
  words.each do |word|
    word.chars.each do |char|
      puts char if vowels.include? char
    end
  end
end