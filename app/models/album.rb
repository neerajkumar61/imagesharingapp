class Album < ActiveRecord::Base
	attr_accessible :user_id, :albumname, :ownername
	belongs_to	:user
	# Album has many photos
	has_many :photos, :dependent => :destroy

	# validate :no_of_images

	# def no_of_images
	# 	byebug
	# 	if @album.photos.count < 2
	# 		self.errors.add(:base, "Create another album to add images")
	# 	end
		
	# end

end
