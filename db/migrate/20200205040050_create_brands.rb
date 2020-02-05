class CreateBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :brands do |t|
      t.string :name,           null: false
      t.string :category_large, null: false
      t.string :category_small, null: false
      t.string :target_sex
      t.string :target_age
      t.integer :area_max,      null: false
      t.integer :area_min,      null: false
      t.text :sales_record
      t.string :image
      t.references :user,    foreign_key: true
      t.timestamps
    end
  end
end
