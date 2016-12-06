class Stonecategory < ActiveRecord::Base
		belongs_to :user


	has_many :amsstones

	translates :categoryname
end
