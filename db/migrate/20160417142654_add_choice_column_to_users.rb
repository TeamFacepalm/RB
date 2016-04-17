class AddChoiceColumnToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :choice, :string
  end
end