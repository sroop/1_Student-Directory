# adding the students into an array
students = [
{ name: "Steve Musgrave", cohort: :march},
{ name: "Sroop Sunar", cohort: :march},
{ name: "Colin Marshall", cohort: :march},
{ name: "Josh Fail-Brown", cohort: :march},
{ name: "Louise Lai", cohort: :march},
{ name: "Robin Doble", cohort: :march},
{ name: "Alex Wong", cohort: :march},
{ name: "Scott Dimmock", cohort: :march},
{ name: "Muhanad Al-Rubaiee", cohort: :march},
{ name: "Shelley Hope", cohort: :march},
{ name: "Will Hall", cohort: :march},
{ name: "Oliver Delevingne", cohort: :march},
{ name: "Nico", cohort: :march},
{ name: "Apostolis", cohort: :march},
{ name: "Stefania", cohort: :march},
{ name: "Robert Leon", cohort: :march},
{ name: "Emma Williams", cohort: :march},
{ name: "Joey Wolf", cohort: :march},
{ name: "Julie Walker", cohort: :march},
]
# creating methods below
def input_students
	print "Please enter the student names: \nTo finish, just hit return twice\n"
	# creating an empty students array which will override the array above
	students = []
	#get the first name
	name = gets.chomp
	#while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		students << { name: name, cohort: :march }
		puts "Now we have #{students.length} students"
		# get another name from the user
		name = gets.chomp
	end
	#  return the array of students
	students
end

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "----------------------"
end

def formatting(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

# calling the methods and passing through students array as the argument
students = input_students
print_header
formatting(students)
print_footer(students)
