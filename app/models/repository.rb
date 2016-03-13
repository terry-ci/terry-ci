class Repository < ActiveRecord::Base
  belongs_to :user
  belongs_to :host
  validates_presence_of :user, :name, :provider, :url

end
