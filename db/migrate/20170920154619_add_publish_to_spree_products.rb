class AddPublishToSpreeProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_products, :publish, :boolean, default: false
  end
end
