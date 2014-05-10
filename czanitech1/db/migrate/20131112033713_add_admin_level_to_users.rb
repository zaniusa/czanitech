class AddAdminLevelToUsers < ActiveRecord::Migration
  def change
    add_column :users, :adminlevel, :integer
  end
end
