# == Schema Information
#
# Table name: leagues
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class League < ApplicationRecord
	has_many :users
	has_many :matches
	validates :name, presence: true, :uniqueness => true
end
