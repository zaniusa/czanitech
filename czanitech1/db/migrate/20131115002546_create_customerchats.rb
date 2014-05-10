class CreateCustomerchats < ActiveRecord::Migration
  def change
    create_table :customerchats do |t|
      t.string :chattext
      t.string :chataux
      t.integer :producer_id
      t.integer :user_id

      t.timestamps
    end
  end
end
