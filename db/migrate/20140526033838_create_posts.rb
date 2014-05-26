class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :form
      t.string :author
      t.string :title
      t.string :subtitle
      t.text :body
      t.text :link
      t.string :artist
      t.string :song

      t.timestamps
    end
  end
end
