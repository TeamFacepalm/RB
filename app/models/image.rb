class Image < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :user
  belongs_to :district 
end
