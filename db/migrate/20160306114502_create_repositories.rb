class CreateRepositories < ActiveRecord::Migration
  def change
    create_table :repositories do |t|
      t.string :name
      t.boolean :active
      t.string :provider
      t.string :url

      t.timestamps null: false
    end
  end
end
