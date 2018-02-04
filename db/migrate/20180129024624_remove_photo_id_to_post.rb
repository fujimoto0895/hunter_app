class RemovePhotoIdToPost < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :photo_id, :string
  end
end
