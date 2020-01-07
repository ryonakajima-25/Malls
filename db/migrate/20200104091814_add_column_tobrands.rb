class AddColumnTobrands < ActiveRecord::Migration[5.0]
  def change
    add_column :brands, :goods_count, :integer
  end
end
