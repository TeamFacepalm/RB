class Candidate < ActiveRecord::Base
  belongs_to :district
  has_many :votes
  has_many :images
end
