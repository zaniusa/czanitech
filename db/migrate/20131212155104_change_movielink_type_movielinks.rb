class ChangeMovielinkTypeMovielinks < ActiveRecord::Migration
  def down
   change_column :movielinks, :movielink, :string
  end
  
  def up
   change_column :movielinks, :movielink, :text
  end
end
