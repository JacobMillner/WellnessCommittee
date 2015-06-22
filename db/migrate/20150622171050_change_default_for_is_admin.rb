class ChangeDefaultForIsAdmin < ActiveRecord::Migration
  def change
    change_table :Wusers do |t|
      t.change :isAdmin, :boolean, :default => false
    end
  end
end
