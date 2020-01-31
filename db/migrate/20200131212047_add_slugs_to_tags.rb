class AddSlugsToTags < ActiveRecord::Migration[5.2]
  def change
    add_column :tags, :slug, :string
    add_index :tags, :slug
  end
end
