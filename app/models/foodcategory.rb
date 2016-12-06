class Foodcategory < ActiveRecord::Base
		belongs_to :user

	has_many :amsfoods


	translates :categoryname
end
