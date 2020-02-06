class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string  :image,       null: false 
      t.references :space
      t.references :brand
      t.timestamps
    end
  end
end
