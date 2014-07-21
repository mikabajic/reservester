class Restaurant < ActiveRecord::Base
	validates :name, presence: true,
	length: {minimum: 3}
	mount_uploader :avatar, AvatarUploader
end 
end

 

		


