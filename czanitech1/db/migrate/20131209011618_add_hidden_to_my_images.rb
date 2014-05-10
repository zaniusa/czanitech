class AddHiddenToMyImages < ActiveRecord::Migration
  def change
    add_column :myimages, :image_hidden, :boolean
  end

  def down
  	remove_column :myimages, :hidden, :boolean
  end
end
