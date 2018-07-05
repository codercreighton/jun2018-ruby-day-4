# #Create a class call Person with attributes name and age.
# class Person
# 	def initialize(name, age)
# 		@name = name
# 		@age = age
# 	end		
# end	


# my_person = Person.new("Heather", 21)

# puts my_person.inspect
# #--------------------------------------------------#

# #Create a User class with name, username, and email

# class User
# 	def initialize(name, username, email)
# 		@name = name
# 		@username = username
# 		@email = email
# 	end	

# end	

# my_user = User.new("Joe Smith", "JSmith", "jsmith@gmail.com")

# puts my_user.inspect

#--------------------------------------------------#
#Create a Pet class with name, breed, and color

# class Pet
# 	def initialize(name, breed, color)
# 		@name = name
# 		@breed = breed
# 		@color = color
# 	end

# end	


# my_pet = Pet.new("Fluffy", "cat", "tan")

# puts my_pet.inspect

# #--------------------------------------------------#
# #Create a Product class with name, category, and price

# class Product
# 	def initialize(name, category, price)
# 		@name = name
# 		@category = category
# 		@price = price

# 	end	
# end	

# my_product = Product.new("Table", "Dining", 199.99)

# my_other_product = Product.new("Bed", "Bedroom", "299.99")

# puts my_product.inspect
# puts my_other_product.inspect

# #--------------------------------------------------#
# #Add getter methods to our Person Class to access data
# class Person

# 	attr_accessor :name, :age #replaces the getters and setters below
# 	def initialize(name, age)
# 		@name = name
# 		@age = age
# 	end	

# 	# def name
# 	# 	@name
# 	# end
	
# 	# def age
# 	# 	@age
# 	# end		

# 	# def birthday
# 	# 	@age +=1
# 	# end	

# 	# def change_name(new_name)
# 	# 	@name = new_name
# 	# end	

# end	


# my_person = Person.new("Heather", 21)

# puts "My name is #{my_person.name} and I am #{my_person.age}-years-old."

# my_person.age +=1
# puts "I just had a birthday, now I am #{my_person.age}!"

# puts "My name used to be #{my_person.name}"

# my_person.name = "Margaret"
# puts "You may now call me #{my_person.name}"
#--------------------------------------------------#

# # Create methods within the Product class to control quantity.

#  class Product

#  	attr_reader :name, :category
#  	attr_accessor  :price, :quantity
# 	def initialize(name, category, price, quantity)
# 		@name = name
# 		@category = category
# 		@price = price
# 		@quantity = quantity

# 	end	

# 	def add_quantity(amount)
# 		@quantity += amount
# 	end	


# 	def sub_quantity(amount)
# 	 	@quantity -=amount
# 	end	

# end	

# product1 = Product.new("Table", "Bedroom", 199.99, 20)
# puts "Initially I have #{product1.quantity} #{product1.name}s"
# product1.add_quantity(4)

# puts " Now I have #{product1.quantity}"

# product1.sub_quantity(2)
# puts "I just made a sale!  I now have #{product1.quantity} #{product1.name}s!"

# #--------------------------------------------------#
# # Create a method for the Pet class to return the animal's sound.

# class Pet
# 	attr_reader :name, :breed, :color, :sound
# 	def initialize(name, breed, color, sound)
# 		@name = name
# 		@breed = breed
# 		@color = color
# 		@sound = sound
# 	end

# end	

# pet1 = Pet.new("Fluffy", "cat", "tan", "meow")

# puts "#{pet1.name} the #{pet1.breed} makes the sound '#{pet1.sound}!'"

# puts "What's your pet's name?"
# petname = gets.chomp.capitalize
# puts "What's your pets breed?"
# petbreed = gets.chomp.downcase
# puts "What's your pets color?"
# petcolor = gets.chomp.downcase
# puts "What's your pets sound?"
# petsound = gets.chomp.downcase

# pet2 = Pet.new(petname, petbreed, petcolor, petsound)

# puts "#{pet2.name} the #{pet2.breed} makes the sound '#{pet2.sound}!'"


#--------------------------------------------------#
# Create a brand new class: Vehicle

# What should the attributes be?

# What methods should we create?


# class Vehicle
# 	attr_reader :make, :model, :original_price
# 	attr_accessor :price, :sold

# 	def initialize(make, model, price, sold)
# 		@make = make
# 		@model = model
# 		@price = price
# 		@sold = sold
# 		@original_price = price
# 	end	

# 	def sale
# 		@price = (0.8 * @price)
# 	end	

# 	def end_sale
# 		@price = @original_price
# 	end	
# end	




# car1 = Vehicle.new("Honda", "Civic", 17000, false)
# car2 = Vehicle.new("Toyota", "Camry", 22000, true)

# vehicles = []

# vehicles.push(car1)
# vehicles.push(car2)

# vehicles.each do |v|
# 	puts "#{v.make} #{v.model}"
# end	

# puts "We have a new car, the #{car1.make} #{car1.model} for the price of #{car1.price}!"

# car1.sale

# puts "The #{car1.make} #{car1.model} is now on sale for the price of #{car1.price}!"

# puts "the #{car1.make} #{car1.model} is no longer on sale.  The price is now #{car1.end_sale}!"

# #--------------------------------------------------#
 
# class Person

# 	attr_accessor :name, :age #replaces the getters and setters 
# 	def initialize(name, age)
# 		@name = name
# 		@age = age
# 	end	


# end	

# #Creates an empty array to store our Person objects
# all_the_people = []

# #a check variable that lets us know the user typed done. Set initially to false since we haven't started typing anything yet
# finished = false


# puts "Enter person data.  When complete, type 'done'"

# #While our check variable is false, continue to ask for a name
# while finished == false
# 	puts "Enter Name:"
# 	name = gets.chomp.upcase

# #if the user types 'done', the tasks are skipped and the else statement sets our check variable to true, which means the user is done entering information
# 	unless name == "DONE"
# 		puts "Enter age:"
# 		age = gets.chomp.to_i

# 		new_profile = Person.new(name, age)
# 		all_the_people.push(new_profile)

# 	else
# 		finished = true	
# 	end 
# end			

# #loop through the array of objects and list the attribute of each object.
# all_the_people.each do |a|
# 	puts "#{a.name}, #{a.age}"
# end	