class AddNameToWusers < ActiveRecord::Migration
  def change
    add_column :wusers, :name, :string
  end
end
