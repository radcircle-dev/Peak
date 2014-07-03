class AddSongIdToTerms < ActiveRecord::Migration
  def change
  	add_column :terms, :song_id, :integer
  end
end
