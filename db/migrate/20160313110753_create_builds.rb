class CreateBuilds < ActiveRecord::Migration
  def change
    create_table :builds do |t|
      t.string :status
      t.timestamp :started_at
      t.timestamp :finished_at
      t.references :pull_request, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
