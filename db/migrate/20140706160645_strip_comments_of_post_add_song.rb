class StripCommentsOfPostAddSong < ActiveRecord::Migration
  def change
  	remove_column :comments, :post_id
  	add_column :comments, :song_id, :integer
  end
end
