require 'spec_helper'

describe "Cards"  do
	let!(:card) {FactoryGirl.create(:card)}

	it "should return the card objects numbers" do
     card.num1.should == 1
     card.num2.should == 3
	end

	it "should add num1 and num2 togehter to get 4" do
		card.addition_answer(card.num1, card.num2) == 4
	end

	it "shoud return false becuase the answer is 4" do
		card.correct?(2) == false
	end

end