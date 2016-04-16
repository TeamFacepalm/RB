class AddUserIdToDistrict < ActiveRecord::Migration
  def change
    add_column :districts, :user_id, :integer
  end
end
