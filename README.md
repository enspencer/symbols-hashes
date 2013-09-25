As we have seen, arrays can be defined to contain
	many items of the same type

```ruby 
my_array = ['zero','one','two','three','four']
```

we can access one of these items by its index in the arrays

```ruby 
puts my_array[2] #outpus 'two' 
```


we can also use the index to SET a value in the arrays

```ruby 
my_array[2] = 'TWO'
puts my_array[2] #outpus 2
```

We can even have arrays containing many different
  data types. Here well create a 'wizard' object

```ruby
my_wizard = ['Gandalf the Grey', 10000, 'Middle Earth', 'You Shall Not Pass', true, nil]
```


Now this is all ok, if you remembered or noted somewhere that:
	my_wizard[0] is name,
        my_wizard[1] is age,
        my_wizard[2] is location,
	my_wizard[3] is famous quote,
	my_wizard[4] is whether or not our wizard is epic, and
	my_wizard[5] is weaknesses

But we begin to see some shortcomings (at least with our wizard example). 

1. There is no evident association between the index of the array and the information it contains