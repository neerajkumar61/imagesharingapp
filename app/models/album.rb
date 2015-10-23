class Album < ActiveRecord::Base
	attr_accessible :user_id, :albumname, :ownername
	belongs_to	:user
	# Album has many photos
	has_many :photos, :dependent => :destroy
	# accepts_nested_attributes_for :photos, allow_destroy: true
	

 #  def self.search(search)
	#   if search
	#     self.where("albumname_name like ?", "%#{search}%")
	#   else
	#     self.all
	#   end
	# end

end
