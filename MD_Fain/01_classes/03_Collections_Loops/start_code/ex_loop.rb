# Write a program that prints 99 bottles of beer on the wall.
# The song starts with
# 99 bottles of beer on the wall
# 99 bottles of beer!
# You take one down and pass it around,
# 98 bottles of beer on the wall!
#
# And ends with
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
<<<<<<< HEAD
<<<<<<< HEAD
# No more bottles of beer on the wall :-(

# def bottle_counter(numb)
# 	if numb > 1 
# 		puts "bottles"
# 	elsif numb == 1
# 		puts "bottle"
# 	end
# end


# 99.downto(1) do |num|
# 	puts "#{num} #{bottle_counter(num)} of beer on the wall, #{num} #{bottle_counter(num)} of beer! You take one down pass it around, "
# 	num -= 1
# 	if num > 0
# 		puts "#{num} #{bottle_counter(num)} of beer on the wall!"
# 	elsif num == 0
# 		puts "No more bottles of beer on the wall"
# 	end
# end




#other method

def bottle_count(count) 
	if count == 1
		"#{count} bottle"
	else
		"#{count} bottles"
	end
end

99.downto(2) do |count|
	puts "#{bottle_count(count)} on the wall"
	puts "#{bottle_count(count)} bottles of beer"
	puts "you take one down pass it around"
	puts "#{bottle_count(count-1)} bottles of beer on the wall"
end

puts "No more bottles of beer on the wall :("
=======
# No more bottles of beer on the wall :-(
>>>>>>> upstream/master
=======
# No more bottles of beer on the wall :-(
#


# SIMPLE SOLUTION:
# ---------------------------------

def bottle_count(count)
  if count == 1
    "#{count} bottle"
  else
    "#{count} bottle#{"s"}"
  end
end

99.downto(2) do |count|
  puts "#{bottle_count(count)} of beer on the wall"
  puts "#{bottle_count(count)} of beer"
  puts "You take one down and pass it around,"
  puts "#{bottle_count(count - 1)} of beer on the wall!"
  puts
end
  puts "1 bottle of beer on the wall"
  puts "1 bottle of beer"
  puts "You take one down and pass it around,"
  puts "No more bottles of beer on the wall :-("
  puts


# OPTIMIZED SOLUTION:
# ---------------------------------

def pluralize(word, count)
  "#{count} #{word}#{'s' unless count == 1}"
end

def sing_bottles(count)
  pluralized_count = pluralize("bottle", count)
  puts "#{pluralized_count} of beer on the wall"
  puts "#{pluralized_count} of beer"
  puts "#{pluralize("bottle", count - 1)} of beer on the wall!"
  puts "You take one down and pass it around," unless count == 1
end

99.downto(2) do |count|
  sing_bottles(count)
  puts "#{bottle_count(count - 1)} of beer on the wall!"
end

sing_bottles(1)
puts "No more bottles of beer on the wall :-("
>>>>>>> upstream/master
