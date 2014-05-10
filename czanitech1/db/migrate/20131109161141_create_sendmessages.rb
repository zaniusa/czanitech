class CreateSendmessages < ActiveRecord::Migration
  def change
    create_table :sendmessages do |t|
      t.string :name,              :null => false, :default => ""
      t.string :email,             :null => false, :default => ""
      t.text :message,             :null => false, :default => ""
      t.integer :user_id

      t.timestamps
    end
  end
end
