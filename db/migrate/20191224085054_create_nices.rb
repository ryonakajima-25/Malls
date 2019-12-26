class CreateNices < ActiveRecord::Migration[5.0]
  def change
    create_table :nices do |t|
      t.references :space, foreign_key: true
      t.references :tenant, foreign_key: true
      t.timestamps
    end
  end
end
