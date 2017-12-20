class ChangeColumnNameAndType < ActiveRecord::Migration[5.1]
  def change
    rename_column :supplies, :product, :product_id
    change_column :supplies, :product_id, 'integer USING CAST(product_id AS integer)'
  end
end
