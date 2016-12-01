class Category < ActiveRecord::Base
	belongs_to :user

	#has_many :amsfoods
	#has_many :amsstones
	#has_many :amsgroups
end
