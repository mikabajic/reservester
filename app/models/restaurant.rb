class Restaurant < ActiveRecord::Base
		mount_uploader :image, ImageUploader
end

	validates :name, presence: true,
	length: { minimum: 3 }
end

