class AddPurchaseRefToGroupPurchases < ActiveRecord::Migration[7.1]
  def change
    add_reference :group_purchases, :purchase, null: false, foreign_key: true
  end
end
