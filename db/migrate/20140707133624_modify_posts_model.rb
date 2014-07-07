class ModifyPostsModel < ActiveRecord::Migration
  def change
  	add_column :posts, :song_id, :integer
  	add_column :posts, :image_link, :string
  	remove_column :posts, :form
  	remove_column :posts, :author
  	remove_column :posts, :songname
  	remove_column :posts, :artist
  end
end
