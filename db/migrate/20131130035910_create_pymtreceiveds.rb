class CreatePymtreceiveds < ActiveRecord::Migration
  def change
    create_table :pymtreceiveds do |t|
      t.decimal :amount
      t.integer :project_id
      t.string :control_1
      t.string :control_2

      t.timestamps
    end
  end
end
