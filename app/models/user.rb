class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :amsfoods
  has_many :amsfoodpictures
  has_many :amsgroups
  has_many :amsgrouppictures
  has_many :amsstones
  has_many :amsstonepictures
  has_many :categories
  has_many :foodcategories
  has_many :groupcategories
  has_many :stonecategories
end
