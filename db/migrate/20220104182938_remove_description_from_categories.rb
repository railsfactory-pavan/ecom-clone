class RemoveDescriptionFromCategories < ActiveRecord::Migration[5.2]
  def up
    remove_column :categories, :description
  end

  def down
    add_column :categories, :description, :string
  end
end
