class AddOrderShowToProjstatus < ActiveRecord::Migration
  def change
    add_column :projstatuses, :ordertoshow, :integer
  end
end
