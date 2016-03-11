class Repository < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user, :name, :provider, :url

end
