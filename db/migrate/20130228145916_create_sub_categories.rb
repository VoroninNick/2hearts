class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.string :name
      t.text :description
      t.integer :category_id
      t.string :slug

      t.timestamps
    end
    add_index :sub_categories, :slug
  end
end
