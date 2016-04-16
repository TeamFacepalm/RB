class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email, :ssn, :dob
  validates :password, length: { minimum: 8 }
  validates :email, format: {
    with: /.+@.+\..+/, messages: 'Invalid email'
  }
  validates :ssn, format: {
    with: ^(\d{3}-?\d{2}-?\d{4}|XXX-XX-XXXX)$
  }

  #TODO regex validaton for Date of Birth.
end
