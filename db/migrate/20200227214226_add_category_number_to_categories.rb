class AddCategoryNumberToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :category_number, :integer
  end
end
