class AddMovielinksToScripts < ActiveRecord::Migration
  def change
    add_column :scripts, :movielinkid1, :integer
    add_column :scripts, :movielinkid2, :integer
    add_column :scripts, :status, :integer
  end
end
