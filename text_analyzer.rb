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
text_without_spaces = text.gsub(/\s+/, '').length
word_count = text.split(/\s+| \.| \,/) 
#word_count = text.split the split method defaults to splitting on whitespace
#word_count = text.scan(/\w+/)

puts "There are #{line_count} lines in this text"
puts "There are #{total_characters} characters in this text." 
puts "There are #{text_without_spaces} characters (excluding spaces)"
puts "There are #{word_count.size} words in this text"
