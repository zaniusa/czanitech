class CreateProjstatuses < ActiveRecord::Migration
  def change
    create_table :projstatuses do |t|
      t.string :statusname
      t.timestamps
    end
  end
end
