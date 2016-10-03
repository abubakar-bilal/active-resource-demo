class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name, null: false, limit: 30
      t.string :price, null:false, limit: 10
      t.string :description
      t.integer :owner_id, null: false

      t.timestamps null: false
    end
  end
end
