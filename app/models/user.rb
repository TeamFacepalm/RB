class User < ActiveRecord::Base
  has_many :images
  has_many :votes
  belongs_to :district

  validates :auth_token, presence: true 
  validates_presence_of :first_name, :last_name, :email, :ssn, :dob
  validates :password, length: { minimum: 8 }
  validates :email, format: {
    with: /.+@.+\..+/, messages: 'Invalid email'
  }
  validates :ssn, format: {
    with: /\A(\d{3}-?\d{2}-?\d{4}|XXX-XX-XXXX)\z/
  }
#TODO regex validaton for Date of Birth.
  def ensure_auth_token
    unless self.auth_token
      self.auth_token = User.generate_token
    end
  end

  def self.generate_token
    token = SecureRandom.hex
    while User.exists?(auth_token: token)
      token = SecureRandom.hex
    end
    token
  end
end
