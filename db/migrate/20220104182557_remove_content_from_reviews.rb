class RemoveContentFromReviews < ActiveRecord::Migration[5.2]
  def up
    remove_column :reviews, :content
  end

  def down
    add_column :reviews, :content, :string
  end
end
