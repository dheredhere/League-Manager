class AddCreatorIdToLeagues < ActiveRecord::Migration[5.0]
  def change
    add_column :leagues, :creator_id, :integer
  end
end
