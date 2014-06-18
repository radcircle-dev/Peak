class AddingPrnameToAdminModel < ActiveRecord::Migration
  def change
  	add_column :admins, :prname, :string
  end
end
