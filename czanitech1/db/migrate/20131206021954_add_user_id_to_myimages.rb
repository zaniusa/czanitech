class AddUserIdToMyimages < ActiveRecord::Migration
  def change
    add_column :myimages, :user_id, :integer
  end
end
