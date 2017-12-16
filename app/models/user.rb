class User < ApplicationRecord
  has_secure_password

  EMAIL_REGEX = /\A[a-zA-Z0-9._]{1,42}@[a-zA-Z0-9]{1,3}[a-zA-Z0-9._]{,40}\z/

  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }

def lower_email
  email.downcase!
end

end
