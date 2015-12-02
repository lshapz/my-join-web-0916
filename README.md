

# My Join

![people on puzzle pieces](https://s3-us-west-2.amazonaws.com/web-dev-readme-photos/cs/join.jpeg)

## Objective

You will be building out Ruby's `#join` method. It shouldn't change the array it's called on.

```ruby
animals = ["aardvark", "hedgehog", "wallaby"]

animals.my_join(", ")
#=> "aardvark, hedgehog, wallaby"

animals
#=> ["aardvark", "hedgehog", "wallaby"]
```

It defaults to just putting every element into a string with no string inbetween if not passed an argument.

```ruby
animals.my_join
#=> "aardvarkhedgehogwallaby"
```
If the elements in the array are not strings, it converts them to strings.

```ruby
symbols = [:hi, :there]
symbols.my_join(" ")
#=> "hi there"

numbers = [ 1, 3, 5, 7 ]
numbers.my_join(" + ")
#=> "1 + 3 + 5 + 7"
```

## Notes

You may not call on Ruby's `#join` method to accomplish this task.

## Resources

* [Ruby's Join Method](http://ruby-doc.org/core-2.2.0/Array.html#method-i-join)

<a href='https://learn.co/lessons/my-join' data-visibility='hidden'>View this lesson on Learn.co</a>
