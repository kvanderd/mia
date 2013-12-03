# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

# Unit tests will test the models
# Do our objects do the right thing, and are they convenient to work with?

require 'spec_helper'

describe "Users" do
  let!(:user)      { FactoryGirl.create(:user) }


  before(:each) do
    visit root_path
    click_link('Login')
    fill_in 'username',                  with: user.username
    fill_in 'password',               with: user.password
    click_button('Login')
  end

  it "should be able to log in without errors" do
    current_path.should == root_path
    page.should have_link("Logout")
  end


   it "should see username on user profile page" do
    click_link user.username
    page.should have_text("Welcome")
  end
end

