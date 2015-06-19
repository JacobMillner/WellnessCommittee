class AddIsPlayerConnectedToWusers < ActiveRecord::Migration
  def change
    add_column :wusers, :isPlayerConnected, :boolean
  end
end
