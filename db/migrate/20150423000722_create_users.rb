class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :playserID
      t.string :password
      t.boolean :isAdmin

      t.timestamps
    end
  end
end
