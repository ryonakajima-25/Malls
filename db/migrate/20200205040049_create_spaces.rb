class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.string :location,        null: false
      t.string :mall_name,       null: false
      t.integer :floor,          null: false
      t.integer :block_number,   null: false
      t.decimal :area,           null: false , precision: 6, scale: 2
      t.integer :rent
      t.integer :sector
      t.references :user,    foreign_key: true
      t.timestamps
    end
  end
end
