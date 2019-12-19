class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.string :location,        null: false
      t.string :mall_name,       null: false
      t.integer :floor,          null: false
      t.integer :block_number,   null: false
      t.integer :area,           null: false
      t.integer :rent
      t.string :sector
      t.string :image
      t.timestamps
      t.references :developer,    foreign_key: true
    end
  end
end
