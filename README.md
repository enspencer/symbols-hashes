#Hashes, Symbols

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
puts my_array[2] #outpus 'TWO'
```


We can even have arrays containing many different
  data types. Here well create a 'wizard' object

```ruby
my_wizard = ['Gandalf the Grey', 10000, 'Middle Earth', 'You Shall Not Pass', true, 'Balrogs']
```


Now this is all ok, if you remembered or noted somewhere that:
```ruby
my_wizard[0] #is name,
my_wizard[1] #is age,
my_wizard[2] #is location,
my_wizard[3] #is famous quote,
my_wizard[4] #is whether or not our wizard is epic, and
my_wizard[5] #is weaknesses
```

##But...
### we begin to see some shortcomings (at least with our wizard example). 

1. There is no evident association between the index of the array and the information it contains.
2. If we are storing diverse information, there is no key that identifies what each piece of information represents.
3. As a product of the first shortcoming, it is very difficult and time-inneficient to fetch or update information if we don't already know where it is. For example, looking up "Gandalf the Grey" by famous quotes might consist of something like:

```ruby
# assume all_wizards is a collection of wizards like the one we defined above
all_wizards.each do |wizard|	#iterates over each of our wizards
	wizard.each do |information| #iterates over single wizard info
		if information == 'You Shall Not Pass'
			return wizard
		end
	end
end
```

##What ever could we use?

#Hashes

A hash is a ruby data structure that allows us to define sets of key-value pairs. The key can then be used to access the value Before any further explaination, take a look at how it's done:

```ruby
my_wizard = {
    name: 'Gandalf the Grey',
    age: 10000,
    location: 'Middle Earth',
    quote: 'You Shal Not Pass',
    epic: true,
    weaknesses: 'Balrogs',
}
```

Already we see a much more organized data structure. Each piece of information is denoted by a key, and we can now access the information by the key. So, if I wanted to see my_wizard's name, I could access it using: 

```ruby
    #we could write
    my_wizard[:name] #this would return 'Gandalf the Grey'
    
    # or
    my_wizard[:name] = 'Ratagast the Brown' # this would reset the name of the wizard
```

So hashes are essentially containers that allow us to attach identifying keys for easy retrieval and setting of values.

##Hash Syntax (Symbols)

We define a hash just as is shown above:

we start with the variable name

`ruby
my_wizard
`

then we give it a set of curly braces, inside of which we will define our key value pairs

`ruby
my_wizard = {}
`

defining a key value pair, we place the key on the left, a colon, and then the value on the right.

`ruby
name : 'Gandalf the Grey'
`

if we have multiple key value pairs, we use the same syntax with commas at the end of each key value pair (except for the last)

`ruby
name: 'Gandalf the Grey",
age: 10000,
quote: 'You shall not pass'
`

you will also see the "hash rocket" syntax floating around

`ruby
:name => 'Gandalf the Grey
`

I personally do not use this sytax, because I feel like the colon sytax is cleaner and more readable, but many developers
do use this and you should be able to recognize and use it. This sytax actually highlights the fact that our key is a SYMBOL.

###Symbols

You may have noticed the ':' before the key when we accessed information from the Hash ( :name ), and again when we saw hash rocket notation. We could also define our hash using strings as our keys:

```ruby
my_wizard = {
    "name": 'Gandalf the Grey',
    "age": 10000,
    "location": 'Middle Earth',
    "quote": 'You Shal Not Pass',
    "epic": true,
    "weaknesses": 'Balrogs',
}

```
