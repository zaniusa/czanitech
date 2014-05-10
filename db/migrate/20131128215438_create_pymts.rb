class CreatePymts < ActiveRecord::Migration
  def change
    create_table :pymts do |t|
      t.decimal :order_to_show
      t.text :pymt_status

      t.timestamps
    end
  end
end
