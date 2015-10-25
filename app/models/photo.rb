class Photo < ActiveRecord::Base
	attr_accessible :album_id, :image,:tag_line_for_photo
	belongs_to	:album
	mount_uploader :image, ImageUploader

	# validate :no_of_images

	# def no_of_images
	# 	# photos = Photo.all
	# 	if photos && photos.count >= 2
	# 		self.errors.add(:base, "Create another album to add images")
	# 	end
		
	# end

end
