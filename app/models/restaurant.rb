class Restaurant < ActiveRecord::Base
	validates :name, presence: true,
                    length: { minimum: 3 }
                end 
                	mount_uploader :image, ImageUploader 
                end 
