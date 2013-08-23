class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :url
      t.string :title
      t.string :client
      t.string :summary
      t.string :published
      t.string :showcase

      t.timestamps
    end
  end
end
