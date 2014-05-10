class AddMoviepathToScripts < ActiveRecord::Migration
  def change
    add_column :scripts, :moviepath1, :string
    add_column :scripts, :moviepath2, :string
    add_column :scripts, :moviepath3, :string
  end
end
