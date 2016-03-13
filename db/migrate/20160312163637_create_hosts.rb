class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :url,                :null => false
      t.integer :docker_port,       :null => false
      t.string :docker_protocol,    :null => false

      t.timestamps null: false
    end
  end
end
