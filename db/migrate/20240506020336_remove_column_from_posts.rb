class RemoveColumnFromPosts < ActiveRecord::Migration[6.1]
  def change
    if column_exists?(:posts, :title)
      remove_column :posts, :title
    end
  end
end
