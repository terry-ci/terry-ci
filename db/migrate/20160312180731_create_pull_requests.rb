class CreatePullRequests < ActiveRecord::Migration
  def change
    create_table :pull_requests do |t|
      t.string :title
      t.string :description
      t.references :user, index: true, foreign_key: true
      t.references :repository, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
