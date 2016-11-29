class Layout < ApplicationRecord
  has_many :user_layouts
  has_attached_file :layout_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "http://geniussys.com/img/placeholder/blogpost-placeholder-100x100.png"
  validates_attachment_content_type :layout_image, content_type: /\Aimage\/.*\z/
end
