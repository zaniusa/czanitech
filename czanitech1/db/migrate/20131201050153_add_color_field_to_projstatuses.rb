class AddColorFieldToProjstatuses < ActiveRecord::Migration
  def change
    add_column :projstatuses, :color, :string
  end
end
