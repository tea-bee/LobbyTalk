class User < ActiveRecord::Base
	before_save { self.e_mail = e_mail.downcase }
	validates :account, presence: true, uniqueness: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates :e_mail, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
    validates :password, length: { minimum: 6 }
	has_secure_password
end
