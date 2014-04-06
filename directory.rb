# creating methods below
def add_student
	students = []
	puts "Enter the first name:"
	first_name = gets.chomp
		while !first_name.empty? do
			puts "Enter the last name:"
			last_name = gets.chomp
				until !last_name.empty? do
					puts "You need to enter a last name!"
					last_name = gets.chomp
				end
			puts "Enter the cohort:"
			cohort = gets.chomp
				until !cohort.empty? do
					puts "You need to enter a cohort!"
					cohort = gets.chomp
				end
			students << { first_name: first_name, last_name: last_name, cohort: cohort }
			puts "Now we have #{students.length} students"
			# get another name from the user
			puts "Next student! Enter the first name:"
			first_name = gets.chomp
		end
	students
end

def input_students
	# asking the user to input an answer
	puts "What would you like to do in the directory?"
	puts "-Type 'add' to add a student"
	puts "-Type 'edit' to edit a student"
	puts "-Type 'delete' to delete a student"
	puts "-Type 'list' to display the full list of students"
	answer = gets.chomp
	#using the case method to offer options for each answer
	case answer
	when "add"
		add_student
	when "edit"
		puts "Enter the name and cohort of the student you'd like to edit."
		puts "Enter the first name:"
		first_name = gets.chomp
		while !first_name.empty? do
			puts "Enter the last name:"
			last_name = gets.chomp
			until !last_name.empty? do
				puts "You need to enter a last name!"
				last_name = gets.chomp
			end
			puts "Enter the cohort:"
			cohort = gets.chomp
			until !cohort.empty? do
				puts "You need to enter a cohort!"
				cohort = gets.chomp
			end
		end
		if first_name == students[:first_name] && last_name == students[:last_name] && cohort == students[:cohort]
			puts "Student found. Please re-enter the information."
			puts "Enter the first name:"
			first_name = gets.chomp
			while !first_name.empty? do
				puts "Enter the last name:"
				last_name = gets.chomp
				until !last_name.empty? do
					puts "You need to enter a last name!"
					last_name = gets.chomp
				end
			puts "Enter the cohort:"
			cohort = gets.chomp
				until !cohort.empty? do
					puts "You need to enter a cohort!"
					cohort = gets.chomp
				end
			end

		else
			puts "Student not found!"
		end

	when "delete"
	when "list"
	end
end

def print_header
	puts "The students at Makers Academy".center(60)
	puts "----------------------".center(60)
end

def display(students)
	students.each_with_index do |student, index|
		puts "#{index+1}. #{student[:first_name]} #{student[:last_name]} (#{student[:cohort]} cohort)"
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
