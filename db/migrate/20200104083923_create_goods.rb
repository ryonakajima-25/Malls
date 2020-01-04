class CreateGoods < ActiveRecord::Migration[5.0]
  def change
    create_table :goods do |t|
      t.integer "brand_id"
      t.integer "developer_id"
      t.timestamps
    end
  end
end
