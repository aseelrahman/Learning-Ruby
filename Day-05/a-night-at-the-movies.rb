movies = {
  raone: 5,
  jaiho: 3
}

puts "Type 'add' to add movie."
puts "Type 'update' to update movie."
puts "Type 'display' to display movie."
puts "Type 'delete' to delete movie."
choice = gets.chomp!

case choice
  when "add"
    puts "Type the name of the movie: "
    title = gets.chomp!
    if(movies[title.to_sym].nil?)
      puts "Give a rating for the movie: "
      rating = gets.chomp!
      movies[title.to_sym] = rating.to_i
      puts "The pair of #{title} and #{rating} has been added"
    else
      puts "Movie alredy exists!"
    end
  when "update"
    puts "Type the name of the movie: "
    title = gets.chomp!
    if(movies[title.to_sym].nil?)
      puts "We don't have any movie on that name!'" 
    else
      puts "Give the new rating to update: "
      rating = gets.chomp!
      movies[title.to_sym] = rating.to_i
      puts "The pair of #{title} and #{rating} has been updated!"
    end
  when "display"
    movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
  when "delete"
    puts "Type the name of the movie: "
    title = gets.chomp!
    if(movies[title.to_sym].nil?)
      puts "We can't find any movie on that name!"
    else
      movies.delete(title.to_sym)
      puts "The movie has been deleted!"
    end
  else
    puts "Error!"
end