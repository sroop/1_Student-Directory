# creating methods below
def input_students
	print "Instructions:\nPlease enter the student names.\nThen to finish, just hit return twice!\n\n"
	# creating an empty students array which will override the array above
	students = []
	#get the first name
	puts "Student Name:"
	name = gets.chomp
	#while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		students << { name: name, cohort: :march }
		puts "Now we have #{students.length} students"
		# get another name from the user
		puts "Student Name:"
		name = gets.chomp
	end
	#  return the array of students
	students
end

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "----------------------"
end

def display(students)
	puts "Type in a letter to display names starting with that letter,\nOr type 'all' to see the full list:"
	letter = gets.chomp
	print_header
	students.each_with_index do |student, index|
		if letter == "all"
			puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
		elsif student[:name].chars.first == letter
			puts " #{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
		end
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

# calling the methods and passing through students array as the argument
students = input_students
display(students)
print_footer(students)
