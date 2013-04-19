class Post < ActiveRecord::Base
  attr_accessible :content, :likes, :title

  validates_presence_of :title
end
