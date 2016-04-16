class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :county
      t.string :body

      t.timestamps null: false
    end
  end
end
