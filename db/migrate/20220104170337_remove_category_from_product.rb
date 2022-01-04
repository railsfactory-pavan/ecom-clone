class RemoveCategoryFromProduct < ActiveRecord::Migration[5.2]
  def up
    remove_colunm :products, :cotegory
  end

  def down
    add_column :products, :cotegory, :string
  end
end
