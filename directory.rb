# refering to students variable inside of methods so must use @
@students = [
{first_name: "Sroop", last_name: "Sunar", cohort: "March"}
]


def print_menu
	puts "What would you like to do in the directory?"
	puts "-Type 'add' to add a student"
	puts "-Type 'edit' to edit a student"
	puts "-Type 'delete' to delete a student"
	puts "-Type 'list' to display the full list of students"
	puts "-Press return to exit"
end

def enter_first_name
	puts "Enter the first name:"
	first_name = gets.chomp
end

def enter_last_name
	puts "Enter the last name:"
	last_name = gets.chomp
	until !last_name.empty? do
		puts "You need to enter a last name!"
		last_name = gets.chomp
	end
	last_name
end

def enter_cohort
	puts "Enter the cohort:"
	cohort = gets.chomp
		until !cohort.empty? do
			puts "You need to enter a cohort!"
			cohort = gets.chomp
		end
	cohort
end


def add_student
first_name = enter_first_name
	while !first_name.empty? do
			last_name = enter_last_name
			cohort = enter_cohort
			@student = { first_name: first_name, last_name: last_name, cohort: cohort }
			@students << @student
			puts "Now we have #{@students.length} students"
			puts "Next student!"
			first_name = enter_first_name
		end
	@students
end


def ask_details
	first_name = enter_first_name
	last_name = enter_last_name
	cohort = enter_cohort
	student_details = { first_name: first_name, last_name: last_name, cohort: cohort }
end


def edit_student
	student_details = ask_details
	if @students.include?(student_details)
		index = @students.index(student_details)
		puts "Student found!"
		puts "What do you want to edit?"
		puts "-Type 1 for first name"
		puts "Type 2 for last name"
		puts "Type 3 for cohort"
		puts "Type 4 to exit"
		user_selection = gets.chomp
		case user_selection
		when "1" 
			puts "Enter the first name:"
			@students[index][:first_name] = gets.chomp
		when "2"
			puts "Enter the last name:"
			@students[index][:last_name] = gets.chomp
		when "3" 
			puts "Enter the cohort:"
			@students[index][:cohort] = gets.chomp
		when "4"
			exit
		else puts "Command not recognised..."
		end
	else
		puts "Student not found, try again!"
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

def neat_summary(students)
	print_header
	display(students)
	print_footer(students)
end


# option = "jibberish jibberish so this isn't empty and the program works"
# while !option.empty?  do
# 	print_menu
# 	option = gets.chomp
# 	case option
# 	when "add"
# 		add_student
# 		neat_summary(@students)
# 	when "edit"
# 		edit_student
# 		neat_summary(@students)
# 	when "list"
# 		neat_summary(@students)
# 	end
# end 
# exit


begin
	print_menu
	option = gets.chomp
	case option
	when "add"
		add_student
		neat_summary(@students)
	when "edit"
		edit_student
		neat_summary(@students)
	when "list"
		neat_summary(@students)
	end
end while !option.empty? 
exit

