class Goods < ActiveRecord::Migration[5.0]
  def change
    drop_table :goods
  end
end
