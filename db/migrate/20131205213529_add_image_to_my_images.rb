class AddImageToMyImages < ActiveRecord::Migration
  def change
    add_column :myimages, :image, :string
  end
end
