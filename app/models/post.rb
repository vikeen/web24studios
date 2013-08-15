class Post < ActiveRecord::Base
  attr_accessible :content, :title, :user_id
  has_one :user

  validates_presence_of :content
  validates_presence_of :title
  validates_presence_of :user_id
end
