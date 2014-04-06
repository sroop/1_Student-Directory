students = [
{first_name: "Sroop", last_name: "Sunar", cohort: "March"}
]

def options
	puts "What would you like to do in the directory?"
	puts "-Type 'add' to add a student"
	puts "-Type 'edit' to edit a student"
	puts "-Type 'delete' to delete a student"
	puts "-Type 'list' to display the full list of students"
	puts "-Press return to exit"
	option = gets.chomp
end

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

def edit_student
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
			return
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
end

def exit
	puts "bye-bye!"
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

def print_footer(students)
	puts "Overall, we have #{students.length} great students"
end



case options
	when "add"
		# add option currently not running ok when the empty array is commented out.
		# won't shovel user input into the existing student array outside of the methods
		add_student
		print_header
		display(students)
		print_footer(students)
	when "list"
		# list running ok
		print_header
		display(students)
		print_footer(students)
	else nil
		exit
end
