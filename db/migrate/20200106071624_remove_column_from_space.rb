class RemoveColumnFromSpace < ActiveRecord::Migration[5.0]
  def change
    remove_column :spaces, :likes_count
  end
end
