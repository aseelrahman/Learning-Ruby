print "Enter your name:"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
  
elsif user_input.empty?
  print "you entered noting!"

else
  print "Theres no s in the input"

end

puts "Modified string is #{user_input}"