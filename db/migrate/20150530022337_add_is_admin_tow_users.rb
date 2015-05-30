class AddIsAdminTowUsers < ActiveRecord::Migration
  def change
    add_column :wusers, :isAdmin, :boolean 
  end
end
