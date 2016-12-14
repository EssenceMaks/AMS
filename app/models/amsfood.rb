class Amsfood < ActiveRecord::Base
  belongs_to :user
  belongs_to :foodcategory

  has_attached_file :imagefood, styles: { small: "116x116#" , medium: "252x302#", simple: "350x350#" , thumb: "150x150#", hard: "1152x1000#" }, default_url: "/images/:style/points.png"
  validates_attachment_content_type :imagefood, content_type: /\Aimage\/.*\z/	

  translates :titlerus, :descriptionrus
end
