class AddWuserIdToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :wuser_id, :integer
    add_index :players, :wuser_id
  end
end
