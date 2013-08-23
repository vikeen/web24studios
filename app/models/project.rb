class Project < ActiveRecord::Base
  attr_accessible :client, :published, :showcase, :summary, :title, :www

  validates_presence_of :title
  validates_presence_of :client
  validates_presence_of :summary
end
