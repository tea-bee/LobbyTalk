class User < ActiveRecord::Base
	validates :account, presence: true, uniqueness: true
	has_secure_password
end
