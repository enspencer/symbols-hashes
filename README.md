#Hashes, Symbols

### Lets start back with arrays

As we have seen, arrays can be defined to contain
	many items of the same type

```ruby 
my_array = ['zero','one','two','three','four']
```


We can access one of these items by its index in the array

```ruby 
puts my_array[2] #outpus 'two' 
```


We can also use the index to SET a value in the array

```ruby 
my_array[2] = 'TWO'
puts my_array[2] #outpus 'TWO'
```


We can even have arrays containing many different
  data types. Here well create the concept of a wizard

```ruby
my_wizard = ['Gandalf the Grey', 10000, 'Middle Earth', 'You Shall Not Pass', true, 'Balrogs', 'Total Badass']
```


Now this is all ok, if you remembered or noted somewhere that:
```ruby
my_wizard[0] #is name,
my_wizard[1] #is age,
my_wizard[2] #is location,
my_wizard[3] #is famous quote,
my_wizard[4] #is whether or not our wizard is epic, and
my_wizard[5] #is weaknesses
my_wizard[6] #is status
```

##But...
### We begin to see some shortcomings (at least with our wizard example). 

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

A hash is a ruby data structure that allows us to define sets of key-value pairs. The key can then be used to access the value. Before any further explaination, take a look at how it's done:

```ruby
my_wizard = {
    name: 'Gandalf the Grey',
    age: 10000,
    location: 'Middle Earth',
    quote: 'You Shal Not Pass',
    epic: true,
    weaknesses: 'Balrogs',
    status: 'Total Badass'
}
```

Already we see a data structure much more suited to our goal of storing a wizard. Each piece of information is denoted by a key to the left of it, so looking at this syntax, we know exactly what each value represents. Furthermore we can now use the key value on the left to access the information items. So, if I wanted to see my_wizard's name, I could access it like so:


```ruby
    my_wizard[:name] #this would return 'Gandalf the Grey'

    # we could even reset the name using the key
    my_wizard[:name] = 'Ratagast the Brown' # this would reset the name of the wizard
```

So like arrays, we can think of hashes as containers for storing information. However hashes, unlike arrays, allow us to attach specific identifying keys to more easily access and update our information

# Hash Syntax

Lets walk through how we defined the hash above:

we start with the variable name

```ruby
my_wizard
```

then we give it a set of curly braces, inside of which we will eventally define our key value pairs

```ruby
my_wizard = {}
```
note: you can always define an empty hash and give it key value pairs later
    
to define a key value pair, we place the key on the left, a colon, and then the value we want associated with our key on the right.

```ruby
name : 'Gandalf the Grey'
```

if we have multiple key value pairs, we use the same syntax and add commas at the end of each key value pair (except for the last one)

```ruby
name: 'Gandalf the Grey",
age: 10000,
quote: 'You shall not pass'
```

you will also see the "hash rocket" syntax floating around

```ruby
:name => 'Gandalf the Grey
```

I personally do not use this sytax, because I feel that the colon sytax is cleaner and more readable, but many developers
do use hash rocket syntax. You will probably see this most often with older ruby code, and you should be able to recognize and use it. As a side note, this sytax actually clearly highlights the fact that our key is in fact a symbol… but more on that later.

We could also define our hash using strings as our keys

```ruby
#if we're using strings, we must use hash rockets
my_wizard = {
    "name" => 'Gandalf the Grey',
    "age" => 10000,
    "location" => 'Middle Earth',
    "quote" => 'You Shal Not Pass',
    "epic" => true,
    "weaknesses" => 'Balrogs',
    "status" => 'Total Badass'
}

```
And now we could accss the values like so:

```ruby
my_wizard["name"]
>> 'Gandalf the Grey'
```

Hashes are an incredibly usefuly data structure that you will use all the time as a ruby developer. Keep in mind, however that that are in no way inherently better than arrays, the two are simply different. You will find yourself using both, and should consider the pros and cons of each when deciding which you should use (if either) to store your data.

#Symbols


You may have noticed the ':' before the key when we accessed information from the Hash:

```ruby
my_wizard[:name]
``` 

and again when we saw hash rocket notation:
```ruby
:name => 'my_wizard'
```
Thats because :name is actually a symbol! So what does a symbol actually look like? It's simply a ':' followed by alphanumeric characters

```ruby
"key" #this is a string
:key #this is a symbol
:key42 #this is a symbol
:"key" #this is a symbol
# note that we cannot make symbols using strictly numbers ( ex :42 is not a valid symbol )
```

So what is the difference so what is a symbol and how does it differ from a string? The difference is that while in ruby, strings are mutable (they can be changed after assignment), symbols are not (they are immutable). Lets see an example to understand the implications of this difference.

```ruby
my_string = "I'm Sorry"
my_string += " Dave, I'm afraid I can't do that"
puts my_string 
>> "I'm Sorry Dave, I'm afraid I can't do that"

:my_symbol = :"I'm Sorry"
:my_symbol += :" Dave, I'm afraid I can't do that"
>> NoMethodError: undefined method `+' for :"I'm Sorry":Symbol
```
As we can see, while we can concatinate two string together to form one string, the same does not hold true for symbols due to the symbols immutability.

We can also convert between symbols and strings like so:

```ruby
:hello.to_s
>> "hello"

"hello".intern
>> :hello

"hello".to_sym
>> :hello
```

It's worth noting that the intern and to_sym functions are exactly the same. to_sym is simply an alias for intern.

Here are a few links I think may be helpful if you're more interseted in sybmols and the reason there are two names for one function:


Symbols Vs. Strings: [http://goo.gl/hHAFsw](http://goo.gl/hHAFsw)

.intern vs .to_sym: [http://goo.gl/xgQtp3](http://goo.gl/xgQtp3)