class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :candidate
  belongs_to :district
  # validates :user_id, uniqueness: { scope: :candidate_id }
  # validates_presence_of :user_id, :post_id, :score
end
