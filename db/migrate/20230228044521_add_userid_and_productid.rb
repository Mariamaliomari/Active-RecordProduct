class AddUseridAndProductid < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_id, :integer
    add_column :products, :product_id, :integer
  end
end
