class AddTypeOfUserToScripts < ActiveRecord::Migration
  def change
    add_column :scripts, :usertype, :string
  end
end
