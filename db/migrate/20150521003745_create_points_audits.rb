class CreatePointsAudits < ActiveRecord::Migration
  def change
    create_table :points_audits do |t|
      t.datetime :modDate
      t.integer :oldPoints
      t.integer :newPoints

      t.timestamps
    end
  end
end
