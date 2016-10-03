class AddIndexOwnerIdIntoArticles < ActiveRecord::Migration
  def change
    add_index :articles, :owner_id
  end
end
