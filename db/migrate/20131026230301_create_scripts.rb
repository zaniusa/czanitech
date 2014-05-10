class CreateScripts < ActiveRecord::Migration
  def change
    create_table :scripts do |t|
      t.string :project,          :null => false, :default => ""
      t.text :notes,              :null => false, :default => ""
      t.text :step1,              :null => false, :default => ""
      t.text :step2,              :null => false, :default => ""
      t.text :step3,              :null => false, :default => ""
      t.text :step4,              :null => false, :default => ""
      t.text :step5,              :null => false, :default => ""
      t.integer :user_id

      t.timestamps
    end
  end
end
