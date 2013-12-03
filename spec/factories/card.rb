require "factory_girl"

FactoryGirl.define do 

	factory :card do 
		num1 "3 + 4"
		answer "7"
		hint "Add 1 to 6 to get the answer."
	end
	
end