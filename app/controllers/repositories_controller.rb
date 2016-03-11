class RepositoriesController < ApplicationController
  before_action :set_respository, only: [:show]

  def show
  end

  private
  def set_respository
    @repository = current_user.repositories.find(params[:id])
  end
end
