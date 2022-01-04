class RemoveStatusFromOrders < ActiveRecord::Migration[5.2]
  def up
    remove_column :orders, :status
  end

  def down
    add_column :orders, :status, :string
  end
end
