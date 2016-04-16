class Candidate < ActiveRecord::Base
  belongs_to :district
  has_many :votes
  has_many :voters, through: :votes, source: :user

  has_attached_file :avatar
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :avatar, matches: [/png\Z/, /jpe?g\Z/]
  validates_presence_of :candidate_id
end
