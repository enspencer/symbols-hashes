#Lets check out some more advanced uses of hashes

# we can actually have a hash as a hash value!
require 'pry'

person = {
	name: {
		first: 'Bob',
		last: 'Smith'
	},
	pets: {
		dog: 'Charlie',
		cat: 'Pepper',
		goldfish: '2chainz'
	},
	age: 24,
	married: true,
}

# if we wanted to access this person's first name, how might we do so?


# we can even have arrays as hash values!

amir = {
	name: {
		first: 'Amir',
		last: 'Jacobs'
	},
	grades: [92, 82, 91, 96, 85, 91],
	age: 19,
	family: {
		size: 6,
		members: ['Mike', 'Sarah', 'Siobhan']
	}
}


sally = {
	name: {
		first: 'Sally',
		last: 'Smith'
	},
	grades: [58, 93, 90, 87, 89, 80],
	age: 28,
	family: {
		size: 6,
		members: ['Mike', 'Sarah', 'Siobhan']
	}
}

students = [amir, sally]

def get_grades(students)
	all_grades = []
	students.each do |student|
		all_grades << student[:grades]
	end
	all_grades.flatten.sort

end
# closed function above so we can't use all_grades
# we just want the above fn to work so it doesn't matter 

def avg(numbers)
	sum = 0
	numbers.each do |number|
		sum += number.to_f
	end
	sum/numbers.length

end

total_grades = get_grades(students)
average = avg(total_grades)
binding.pry
# get_grades(students)



