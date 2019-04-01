class User < ApplicationRecord

	has_secure_password 

	has_attached_file :avatar,
                    :styles => { :medium => "150x150>", :thumb => "44x44#" },
                    :default_url => "/images/default.png"

    validates_attachment :avatar, :presence => true,
                    	 :content_type => { :content_type => ["image/jpeg", "image/gif",
                    					 	"image/png"]},

                    					 		:size => { :in => 0..1000.kilobytes}

	extend FriendlyId 

	friendly_id :title, use: :slugged 
	
end
