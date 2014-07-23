class Restaurant < ActiveRecord::Base
	validates :name, presence: true,
	length: { minimum: 3 }
	mount_uploader :image, ImageUploader
	Restaurant.each do |restaurant|
		restaurant.image.recreate_versions! if restaurant.image?
	end
end 



   
