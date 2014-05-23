=begin
loop 1 through 100
if a number is divisible by 3 puts fizz
if a number is divisible by 5 puts buzz
if a number is divisible by 3 and 5 puts fizzbuzz
else puts out the number
=end

1.upto(100) do |count|
 if count % 3 == 0 && count % 5 ==0
		puts "fizzbuzz"
	elsif count % 3 == 0
		puts "fizz"
	elsif count % 5 == 0
		puts "buzz"
	else
		puts count
	end
end




