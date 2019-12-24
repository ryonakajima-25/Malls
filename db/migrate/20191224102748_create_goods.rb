class CreateGoods < ActiveRecord::Migration[5.0]
  def change
    create_table :goods do |t|
      t.references :brand, foreign_key: true
      t.references :developer, foreign_key: true

      t.timestamps
    end
  end
end
