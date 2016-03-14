class UsersController < ApplicationController

  def sync_repositories
    current_user.sync_repositories
    redirect_to repository_path(current_user.repositories.first)
  end

end
