class Image < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :user_id
      t.integer :district_id
      t.integer :candidate_id
      t.string :name
      t.attachment :avatar
    end
  end
end
