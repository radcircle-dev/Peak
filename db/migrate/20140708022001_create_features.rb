class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.integer :user_id
      t.string :image_link

      t.timestamps
    end
  end
end
