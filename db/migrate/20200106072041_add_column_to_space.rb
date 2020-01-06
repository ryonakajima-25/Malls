class AddColumnToSpace < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :nices_count, :integer
  end
end
