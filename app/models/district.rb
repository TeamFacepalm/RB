class District < ActiveRecord::Base
  has_many :candidates
  has_many :users

  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :image, matches: [/png\Z/, /jpe?g\Z/]
end
