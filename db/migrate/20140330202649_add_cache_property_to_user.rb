class AddCachePropertyToUser < ActiveRecord::Migration
  def change
    add_column :users, :fb_graph_cache, :text
  end
end
