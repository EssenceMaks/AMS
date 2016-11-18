class Amsgrouppicture < ActiveRecord::Base


  belongs_to :user


  has_attached_file :imagegrouppicture, styles: { medium: "631x185#", thumb: "100x100#" }, default_url: "/images/:style/points.png"
  validates_attachment_content_type :imagegrouppicture, content_type: /\Aimage\/.*\z/
end
