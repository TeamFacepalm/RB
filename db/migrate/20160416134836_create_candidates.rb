class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.integer :district_id
      t.string :name
      t.string :avatar

      t.timestamps null: false
    end
  end
end
