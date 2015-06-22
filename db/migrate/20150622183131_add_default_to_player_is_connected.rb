class AddDefaultToPlayerIsConnected < ActiveRecord::Migration
  def change
    change_table :Wusers do |t|
      t.change :isPlayerConnected, :boolean, :default => false
    end
  end
end
