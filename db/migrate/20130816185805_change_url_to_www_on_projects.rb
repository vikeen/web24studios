class ChangeUrlToWwwOnProjects < ActiveRecord::Migration
  def up
    rename_column :projects, :url, :www
  end

  def down
    rename_column :projects, :www, :url
  end
end
