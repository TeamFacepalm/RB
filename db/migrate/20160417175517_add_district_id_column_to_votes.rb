class AddDistrictIdColumnToVotes < ActiveRecord::Migration
  def change
  	add_column :votes, :district_id, :integer
  end
end
