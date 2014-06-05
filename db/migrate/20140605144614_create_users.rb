class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :prname
      t.datetime :created_at
      t.string :email

      t.timestamps
    end
  end
end
