class Repository < ActiveRecord::Base
  belongs_to :user
  has_many :pull_requests, dependent: :destroy
  has_many :builds, through: :pull_requests, dependent: :destroy
  validates_presence_of :user, :name, :provider, :url

  def builds_running
     builds.running
  end

  def build_history
    builds.completed
  end
end
