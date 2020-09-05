class CreateConfigCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :config_categories do |t|
      t.string :name
      t.integer :category_type

      t.timestamps
    end
  end
end
