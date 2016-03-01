Challenge 4:

When trying to initialize a new DockingStation object in irb, the error:

NameError: uninitialized constant DockingStation
	from (irb):2
	from /Users/Paul/.rvm/rubies/ruby-2.2.1/bin/irb:11:in <main>

A NameError is thrown when a given name is invalid or undefined.
In this case it is undefined as we are trying to create an object of a class that doesn't exist (DockingStation)

To resolve this error, we could make a new class called DockingStation.
