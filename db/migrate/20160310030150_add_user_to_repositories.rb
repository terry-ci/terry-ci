class AddUserToRepositories < ActiveRecord::Migration
  def change
    add_reference :repositories, :user, index: true, foreign_key: true
  end
end
