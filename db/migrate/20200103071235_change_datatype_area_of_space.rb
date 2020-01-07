class ChangeDatatypeAreaOfSpace < ActiveRecord::Migration[5.0]
  def change
    change_column :spaces, :area, :decimal, precision: 6, scale: 2
  end
end
