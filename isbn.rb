def isbn(my_number)
	my_number.class
	if my_number.class == Integer
		"valid"
	else
		"invalid"
	end
end

def isbn_length(my_number)
	if my_number.to_s.length == 10 || my_number.to_s.length == 13
		"valid"
	else
		"invalid"
	end
end

def isbn10_validity(my_number)
	ans = 0
	counter = 10
	check_digit = my_number[9]
	my_number.each do |num|
		counter -= 1
		ans += num * counter
	end
		if ans % 11 == check_digit
			return "valid"
		else
			 return "invalid"
		end
end

	
# 	my_number.each_with_index {| num, idx | ans += (idx) * num } 
# 	if ans % 11 == check_digit
# 		"valid"
# 	else
# 		"invalid"
# 	end
# end

# def isbn13_validity(my_number)
# 	ans = 0
# 	my_number.map.with_index{|v,i| ans = i % 2 == 0 ? v : v * 3 } || my_number.map.with_index{|v,i| ans = i % 1 == 0 ? v : v * 1 }
# 	ans = ans % 10 
# 	ans = ans - 10
# 	puts ans

# 	if ans == my_number[12]
# 		"valid"
# 	else
# 		"invalid"
# 	end
	 


# my_number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
# my_number.map.with_index(&:*).inject(:+)