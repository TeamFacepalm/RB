class Image < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :user
  belongs_to :district

  has_attached_file :avatar
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :avatar, matches: [/png\Z/, /jpe?g\Z/]
  validates_presence_of :user_id, :district_id, :candidate_id
end
