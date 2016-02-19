def welcome
	puts "   "	
	puts "I am the Almighty Zoltar!"
	puts "   "
	puts "What do you wish to know?"
	puts "   "
	user_input = gets.strip.downcase
	question(user_input)
end


def question(user_input)
	response = ["What do you think?", "You shouldn't even ask that, keep that to yourself please", 
		"I'm trapped, Get me out of this machine and I'll tell you what you want to know",
	"No", "Yes", "Peanut Butter Jelly TIME!", "That is a really deep question, maybe you should seek guidance elsewhere", 
	"The world will never know!", "Ye who smealt it dealt it.", "Are you crazy or high?", 
	"Why do you bother me with such trivial matters?", "Take a shower", 
	"Why don't you just forget that, slip off your shoes, pour a glass of wine and watch some Golden Girls",
	"That's disturbing3, please contact the suicide hotline at 1 (800) 273-8255", "Tomorrow","I'm not sure",
	"Ask again later"]

	if user_input.include? "big"
		puts "Did you just wish to be BIG? Who are you Tom Hanks? This cannot be granted!"
	elsif user_input.include? "!"
		puts "No yelling, I shall leave now."	
		exit (0)
	else 
		puts "#{response.sample}"
	end	
end


def repeat
	welcome
	puts "Zoltar speaks!"
	exit_zoltar
end	

def exit_zoltar
	puts "   "
	puts "Do you wish to know more? (y/n)?"
	exit_input = gets.strip.downcase
	case exit_input
		when "y" 
			repeat
		else puts "Goodbye!"
			exit (0)
	end 
end	

welcome

puts "Zoltar speaks!"

exit_zoltar