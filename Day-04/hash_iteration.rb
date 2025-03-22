puts "Enter a phrase you'd like to analyze: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

# Counting words from input and setting up the value as their count for each word
words.each do |word|
  frequencies[word] += 1
end

# Sorting inputs by their value.
frequencies = frequencies.sort_by do |x, y|
  y
end
frequencies.reverse!

frequencies.each do |name, count|
  puts name + " " + count.to_s
end