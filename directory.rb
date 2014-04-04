# adding the students into an array
students = [
"Steve Musgrave",
"Sroop Sunar",
"Colin Marshall",
"Josh Fail-Brown",
"Louise Lai",
"Robin Doble",
"Alex Wong",
"Scott Dimmock",
"Muhanad Al-Rubaiee",
"Shelley Hope",
"Will Hall",
"Oliver Delevingne",
"Nico",
"Apostolis",
"Stefania",
"Robert Leon",
"Emma Williams",
"Joey Wolf",
"Julie Walker"
]

puts "The students of my cohort at Makers Academy"
puts "----------------------"
# and then printing the list of students below by using the each method to iterate over each student in the array
students.each do |student|
	puts student
end

# printing the total count using the length method on the array
puts "Overall, we have #{students.length} great students"
