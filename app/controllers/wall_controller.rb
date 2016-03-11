class WallController < ApplicationController
  def index
    @repositories = current_user.repositories
  end
end
