#analyze text and extract data from it
=begin
line_count = 0
text = ''
File.open("oliver_twist.txt").each do |line| 
	line_count += 1
    line << text 
    puts line
end
=end

#readlines method. much simpler
file = File.readlines("oliver_twist.txt")
line_count = file.size
text = file.join
total_characters = text.size

puts "There are #{line_count} lines in this text"
puts "There are #{total_characters} characters in this text." 