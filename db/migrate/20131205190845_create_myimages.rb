class CreateMyimages < ActiveRecord::Migration
  def change
    create_table :myimages do |t|
      t.string :image_name
      t.text :image_link

      t.timestamps
    end
  end
end
