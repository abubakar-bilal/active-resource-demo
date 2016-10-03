class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :company_type
      t.string :description
      t.integer :size

      t.timestamps null: false
    end
  end
end
