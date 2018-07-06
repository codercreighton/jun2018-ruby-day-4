# Help match up teams for the first round of a seed-based tournament. In a seeded tournament, and during the first round, the top seed is matched with the bottom seed, the 2nd highest team is matched with the second lowest, etc.  

#Declare a new class to create our teams
class Team
	attr_accessor :name, :rank

	def initialize(name, rank)
		@name = name
		@rank = rank
	end	

end


 #Method to get build menu and evaluate user option. After each 
def main_menu

	puts "\n"
	puts "Welcome to the Tournament! "
	puts "Make a selection:"
	puts "---------------------------"
	puts "1. Enter Teams"
	puts "2. List Teams"
	puts "3. List Match-Ups"
	puts "0. Exit Program"

	option = gets.chomp.to_i

if option == 1 
	@tourny_teams = add_teams #stores the values returned from "add_teams"  in an array 
	main_menu
elsif option == 2
	list_teams(@tourny_teams)	
	main_menu
elsif option == 3
  @match_ups = match_teams(@tourny_teams)
  show_matchups(@match_ups)
  main_menu	
elsif option == 0
 	puts "Exiting Program"
	exit
else
	puts "Not a valid option.  Try again."
	main_menu
end	


end



#method to build the team array

def add_teams
	
	puts "How many teams are you adding?"
	num = gets.chomp.to_i

	num.times do
		puts "Enter a team:"
		team_name = gets.chomp.upcase
		puts "Enter team rank:"
		team_rank = gets.chomp.to_i
		
		team = Team.new(team_name,team_rank)
		@new_team.push(team)
		
	end
		@new_team.sort_by {|n| n.rank}
end

def list_teams(array)
	if array.length == 0
		puts "There are currently no teams."
	else
		puts "Here are the teams:"
		puts "---------------------"

		array.each do |a|
			puts "#{a.rank} #{a.name}"
		end
	end		
	main_menu
end	


def match_teams(team_array)
	length = team_array.length

	matches = []
	if length%2 == 0
		while length > 0
			matches.push("#{team_array[0].name} v.s.#{team_array[length-1].name}")
			team_array.delete_at(0)
			team_array.pop

			length -= 2
		end

	else
		matches.push("#{team_array[0].name} has a BYE")
		team_array.delete_at(0)
		length -= 1
		
		while length > 0
			matches.push("#{team_array[0].name} v.s.#{team_array[length-1].name}")
			team_array.delete_at(0)
			team_array.pop

			length -= 2
		end	
	
	end
	return matches
end

def show_matchups(array)

	puts "Here are your tournament matchups:"
	puts "----------------------------------"
	array.each do |a|
		puts a
	end	
end	



#This is my main program
system('clear')
#create empty arrays and make them instance variables so that they can move between methods.
@new_team = []
@match_ups = []
@tourny_teams =[]
main_menu











