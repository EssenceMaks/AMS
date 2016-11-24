class Amsfoodpicture < ActiveRecord::Base

  belongs_to :user


  has_attached_file :imagefoodpicture, styles: { medium: "631x185#", thumb: "382x300#" }, default_url: "/images/:style/points.png"
  validates_attachment_content_type :imagefoodpicture, content_type: /\Aimage\/.*\z/

  translates :titlerus, :descriptionrus
end
