class CreatePlayerRounds < ActiveRecord::Migration
  def change
    create_table :player_rounds do |t|
      t.integer :playerScore

      t.timestamps
    end
  end
end
