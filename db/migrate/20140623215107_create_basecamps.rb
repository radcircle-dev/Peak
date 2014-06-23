class CreateBasecamps < ActiveRecord::Migration
  def change
    create_table :basecamps do |t|
      t.text :text

      t.timestamps
    end
  end
end
