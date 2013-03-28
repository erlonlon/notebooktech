class Post < ActiveRecord::Base
  attr_accessible :autor, :body, :subtitle, :title, :url
end
