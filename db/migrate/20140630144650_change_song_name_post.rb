class ChangeSongNamePost < ActiveRecord::Migration
  def change
  	remove_column :posts, :song
  	add_column :posts, :songname, :string
  end
end
