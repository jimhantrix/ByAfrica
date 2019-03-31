class User < ApplicationRecord

	has_secure_password 

	extend FriendlyId 

	friendly_id :title, use: :slugged 
	
end
