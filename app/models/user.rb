class User < ActiveRecord::Base
  has_secure_password

  has_many :votes
  belongs_to :district

  # has_attached_file :avatar
  # validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  # validates_attachment_file_name :avatar, matches: [/png\Z/, /jpe?g\Z/]

  # validates :auth_token, presence: true
  # validates_presence_of :first_name, :last_name, :email, :ssn, :dob
  # validates :password, length: { minimum: 3 }
  # validates :email, format: {
  #   with: /.+@.+\..+/, messages: 'Invalid email'
  # }
  # validates :ssn, format: {
  #   with: /\A(\d{3}-?\d{2}-?\d{4}|XXX-XX-XXXX)\z/
  # }
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
