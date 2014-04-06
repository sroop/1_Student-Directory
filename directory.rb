# creating methods below
def input_students
	print "Instructions:\nPlease enter the student names.\nThen to finish, just hit return twice!\n\n"
	# creating an empty students array which will override the array above
	students = []
	#get the first name to begin the process
	puts "Enter the first name:"
	first_name = gets.chomp
	#while the name is not empty, repeat this code
	while !first_name.empty? do
		puts "Enter the last name:"
		last_name = gets.chomp
		until !last_name.empty? do
			puts "You need to enter a last name!"
			last_name = gets.chomp
		end
		# add the student hash to the array
		students << { first_name: first_name, last_name: last_name, cohort: :march }
		puts "Now we have #{students.length} students"
		# get another name from the user
		puts "Next student! Enter the first name:"
		first_name = gets.chomp
	end
	#  return the array of students
	students
end

def print_header
	puts "The students of my cohort at Makers Academy".center(60)
	puts "-------------------------------------------".center(60)
end

def display(students)
	students.each_with_index do |student, index|
		puts "#{index+1}. #{student[:first_name]} #{student[:last_name]} (#{student[:cohort]} cohort)".center(60)
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

# calling the methods and passing through students array as the argument
students = input_students
print_header
display(students)
print_footer(students)
