class CreateRelatives < ActiveRecord::Migration
  def change
    create_table :relatives do |t|
      t.integer :post_id
      t.integer :song_id

      t.timestamps
    end
  end
end
