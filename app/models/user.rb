class User < ApplicationRecord

	has_secure_password 

	extend FriendlyId 

	friendly_id :name, use: :slugged 
	
end
