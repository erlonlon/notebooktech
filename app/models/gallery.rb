class Gallery < ActiveRecord::Base
  attr_accessible :body, :title, :url,:type_id, :foto


  default_scope :order => "created_at DESC"

  belongs_to :type
  validates_presence_of :title, :type_id
  validates_associated :type


   has_attached_file :foto, :styles => { :small => "710x300#", :medium => "588x180#", :thumb => "110x100#" }
   validates_attachment_presence :foto
   validates_attachment_size :foto, :less_than => 2.megabyte
   validates_attachment_content_type :foto, :content_type => %w(image/png image/jpeg image/gif)

end
