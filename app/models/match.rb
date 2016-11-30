# == Schema Information
#
# Table name: matches
#
#  id         :integer          not null, primary key
#  player1_id :integer
#  player2_id :integer
#  result     :integer
#  league_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Match < ApplicationRecord
	MATCH_RESULTS = ["Win", "Loss"]
	belongs_to :league

end
