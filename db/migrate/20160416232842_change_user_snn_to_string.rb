class ChangeUserSnnToString < ActiveRecord::Migration
  def change
    change_column :users, :ssn, :string 
  end
end
