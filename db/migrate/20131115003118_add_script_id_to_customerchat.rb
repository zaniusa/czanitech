class AddScriptIdToCustomerchat < ActiveRecord::Migration
  def change
    add_column :customerchats, :script_id, :integer
  end
end
