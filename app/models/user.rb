class User < ApplicationRecord
	has_secure_password
	has_many:item ,dependent: :destroy
	has_many:inventory ,dependent: :destroy
end
