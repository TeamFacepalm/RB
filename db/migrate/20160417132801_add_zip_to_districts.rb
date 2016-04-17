class AddZipToDistricts < ActiveRecord::Migration
  def change
    add_column :districts, :zip, :string 
  end
end
