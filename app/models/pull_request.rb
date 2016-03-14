class PullRequest < ActiveRecord::Base
  belongs_to :user
  belongs_to :repository
  has_many :builds, :dependent => :delete_all
end
