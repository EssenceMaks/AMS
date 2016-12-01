class Groupcategory < ActiveRecord::Base
		belongs_to :user


	has_many :amsgroups
end
