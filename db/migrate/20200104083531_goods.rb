class Goods < ActiveRecord::Migration[5.0]
  def up
    drop_table :goods
  end

  def down
  end
end
