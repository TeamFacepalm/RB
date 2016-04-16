class AddCandidateIdColumnToDistrict < ActiveRecord::Migration
  def change
    add_column :districts, :candidate_id, :integer 
  end
end
