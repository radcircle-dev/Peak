class AddingDetailToSongs < ActiveRecord::Migration
  def change
  	add_column :songs, :link, :string
  	add_column :songs, :artistn, :string
  end
end
