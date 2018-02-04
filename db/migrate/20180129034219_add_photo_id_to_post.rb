class AddPhotoIdToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :photo_id, :string
  end
end
