class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.integer :post_id
      t.integer :category_id

      t.timestamps
    end
  end
end
