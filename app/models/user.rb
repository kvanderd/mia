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

class User < ActiveRecord::Base
  has_many :rounds
  attr_accessible :username, :password
  validates :password, presence: true
  validates :username, 
	  uniqueness: {message: "This username is already taken."},
	  presence: {message: "Please create a username."}
  has_secure_password 
end
