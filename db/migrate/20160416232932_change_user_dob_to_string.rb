class ChangeUserDobToString < ActiveRecord::Migration
  def change
    change_column :users, :dob, :string
  end
end
