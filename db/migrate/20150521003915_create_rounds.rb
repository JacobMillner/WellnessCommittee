class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :description
      t.integer :maxScore

      t.timestamps
    end
  end
end
