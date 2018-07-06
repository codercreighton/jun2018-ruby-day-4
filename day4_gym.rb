# A gym has hired you to solve a problem. Most of their clients are fairly new to weightlifting and don’t know what to put on the barbell for a particular weight. The weights they have made available are in 45, 35, 25, 15, 10 and 5 lbs. increments. Build them a Ruby application that will tell them, for a given weight, what plates to put on each side of the bar. Bear in mind that the bar itself weighs 45 lbs.

# For example, if they want to load 225 lbs. on the bar, they will need to put two 45 lbs. plates on each side of the bar. 45x4 = 180 lbs. Plus 45 lbs. for the barbell itself equals a total of 225 lbs. 

# Hint: You don't really need to create Objects for this one, so you get a break from that. But you will need to create methods!

def choose_weight 

#user inputs weight.  
	puts "Enter the weight you would like to lift in order to know which weights to use.  It must be a multiple of 5lbs."


	print "Your weight:"
	lift = gets.chomp.to_i

	if  lift == 45 
		puts "The bar weighs 45 lbs.  No additional weights needed."
	elsif	lift < 45
		puts "You must enter a minimun value of 45lb. Try again."
		choose_weight #allow the user to enter a weight again.

	elsif lift%5 != 0 
		puts "Sorry, that's not a valid choice! Try again."
		choose_weight	#allow the user to enter a weight again.
	else
		weights(lift) #call the method to choose the best weight size based on user input.
	end	

end


def weights(start_weight)
	array =[]
	count_45 = 0
	count_35 = 0
	count_25 = 0
	count_15 = 0
	count_10 = 0
	count_5 = 0
	weight = start_weight - 45 #accounts for the size of the bar

	while weight >= 9 #as long as weight is at least 10lbs, we have weight sizes to use. We decrement from weight each pass through based on the condition it meets, until we have less that 10lbs left.

		if weight-90 > 0
			array.push("add a 45lb weight to each side")
			count_45 +=1
			weight -= 90

		elsif weight-70 > 0
			array.push("add a 35lb weight to each side")
			count_35 +=1
			weight -= 70

		elsif weight-50 > 0
			array.push("add a 25lb weight to each side")
			weight -= 50
			count_25 +=1

		elsif weight-30 > 0
			array.push("add a 15lb weight to each side")
			weight -= 30
			count_15 +=1

		elsif weight-20 > 0
			array.push("add a 10lb weight to each side")
			weight -= 20	
			count_10 +=1

		elsif weight-10 >= 0
			array.push("add a 5lb weight to each side")
			weight -= 10
			count_5 +=1
		end
	end			
	puts"\n"
	puts "------------------------------"
	puts "Load on each side of the bar:"
	puts "------------------------------"
	output(count_45,45)
	output(count_35,35)
	output(count_25,25)
	output(count_15,15)
	output(count_10,10)
	output(count_5,5)

#once weight drops below 10lbs, we no longer have weights to use and the user is given a message to adjust their initial weight value.
	if weight > 0
		puts "We've have gotten you as close as we can to your desired weight. Your initial weight of #{start_weight}lbs has to be rounded up or down by #{weight}lbs to account for our weight selection."
	end	




end	

def output(weight_count,weight_size)
	#only outputs the sizes needed
	if weight_count != 0	
		puts "#{weight_count} #{weight_size}lb weight(s)"
	end	
end


#------------- Main Program ----------#
choose_weight
	













