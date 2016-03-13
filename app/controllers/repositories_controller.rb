class RepositoriesController < ApplicationController
  before_action :set_respository, only: [:show, :update]

  def show
    @hosts = Host.all
  end

  def update
    @repository.host = Host.find params[:repository][:host_id]
    @repository.active = params[:repository][:ative]
    @repository.save
    redirect_to repository_path
  end

  private
  def set_respository
    @repository = current_user.repositories.find(params[:id])
  end
end
