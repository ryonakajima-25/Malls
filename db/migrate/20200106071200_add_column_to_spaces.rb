class AddColumnToSpaces < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :likes_count, :integer
  end
end
