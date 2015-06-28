class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :fullName
      t.integer :points
      t.string :shoptechEmail

      t.timestamps
    end
  end
end
