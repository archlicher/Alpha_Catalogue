class AddClientRefToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :client, foreign_key: true
    add_reference :orders, :article, foreign_key: true
  end
end
