class RepositorySync
  extend ActiveSupport::Concern

  def self.fake_sync(user)
    user.repositories.destroy_all
    FactoryGirl.create_list(:repository, 10, user: user)
    user.repositories.reload
    repository = user.repositories.where(active: true).first
    FactoryGirl.create_list(:pull_request, 8, repository: repository)
    FactoryGirl.create(:build, pull_request: repository.pull_requests.sample)
  end

end
