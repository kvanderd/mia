# == Schema Information
#
# Table name: cards
#
#  id        :integer          not null, primary key
#  question1 :string(255)
#  question2 :string(255)
#  answer    :string(255)
#  hint      :string(255)
#  operator  :string(255)
#  deck_id   :integer
#

describe Card do
  it { should belong_to(:deck)}
  it { should have_many(:guesses)}
end
