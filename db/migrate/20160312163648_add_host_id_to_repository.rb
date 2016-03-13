class AddHostIdToRepository < ActiveRecord::Migration
  def change
    add_column :repositories, :host_id, :integer
  end
end
