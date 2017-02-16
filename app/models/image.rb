class Image < ActiveRecord::Base
  has_attached_file :picture, :styles => { :large => "800x800>", :medium => "500x500>", :thumb => "100x100" }
  has_many :comments, dependent: :destroy

  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end
