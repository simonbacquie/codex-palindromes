# HANDLE INPUT
in_string = ARGV[0]

if in_string.nil?
	puts "** You must pass a string of letters as an argument to this script."
	exit
end

if in_string == "?"
	example_num = ARGV[1].to_i
	if !(1..5).include? example_num
		puts "** You must pass an example number (1-5) as the second argument."
		exit
	end
	example_index = example_num - 1
	examples = ["at", "gag", "cacatat", "ttgatgggt", "cacaattcccatgggttgtggag"]
	in_string = examples[example_index]
end

last_index = in_string.length - 1
palindromes = []
longest_palindrome = ""

# FIND PALINDROMES
(0..last_index).each do |substr_start|
	(substr_start..last_index).each do |substr_end|
		substr = in_string[substr_start..substr_end]
		unless substr.length < 2
			if substr == substr.reverse
				palindromes.push substr
				if substr.length > longest_palindrome.length
					longest_palindrome = substr
				end
			end
		end
	end
end

# DISPLAY RESULTS
if longest_palindrome.length > 0
	puts "** #{palindromes.length} palindromes were found:"
	palindromes.each do |pal|
		puts pal
	end
	puts "** The longest palindrome is: "
	puts longest_palindrome
else
	puts "** No palindromes were found."
end
