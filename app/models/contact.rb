class Contact < ActiveRecord::Base
attr_accessible :assunto, :body, :email, :fone, :name, :nickname


default_scope :order => "created_at DESC"

validates_presence_of :name , :email, :assunto
validates_format_of :email, :with => /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
captcha :nickname



end
