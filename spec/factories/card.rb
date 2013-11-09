require "factory_girl"
include Addition

FactoryGirl.define do 

	factory :card do 
		num1 1
		num2 3
	end
end