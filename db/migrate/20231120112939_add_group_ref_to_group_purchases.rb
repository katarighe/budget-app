class AddGroupRefToGroupPurchases < ActiveRecord::Migration[7.1]
  def change
    add_reference :group_purchases, :group, null: false, foreign_key: true
  end
end
