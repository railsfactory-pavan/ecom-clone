class AddStatusIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :status_id, :integer
  end
end
