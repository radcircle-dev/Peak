class RemoveLinkFromSong < ActiveRecord::Migration
  def change
  	remove_column :songs, :link
  end
end
