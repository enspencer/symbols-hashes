# an array is essentially a list of items

my_array = ['first_item', 'second_item', 'third_item']


# we can access these 'indexing' our array. Note that indecies start at zero

my_array[0] # returns 'first_item'


# arrays can contain different data types

my_second_array = [1, 2, 'three', 'four', false, nil, 28]


#what value would this return?:

my_second_array[3] 


# we can also use the indecies to set array values

my_second_array[3] = "hamster"
my_second_array[3] # will now return 'hamster'


# we can even have arrays of arrays (this is often called a 2D array)

my_two_d_array = [[1, 2],[8, 10],[true, false], [nil, nil]]


#so what would my_two_d_array[0] return?
#how would we access the number 10 in our two_d_array?
