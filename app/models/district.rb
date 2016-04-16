class District < ActiveRecord::Base
  has_many :candidates
  has_many :images
  has_many :users
end
