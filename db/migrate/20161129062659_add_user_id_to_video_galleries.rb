class AddUserIdToVideoGalleries < ActiveRecord::Migration[5.0]
  def change
    add_column :video_galleries, :user_id, :integer
    add_index :video_galleries, :user_id
  end
end
