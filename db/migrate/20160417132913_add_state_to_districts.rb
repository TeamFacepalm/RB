class AddStateToDistricts < ActiveRecord::Migration
  def change
    add_column :districts, :state, :string 
  end
end
