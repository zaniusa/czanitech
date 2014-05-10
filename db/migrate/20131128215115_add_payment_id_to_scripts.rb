class AddPaymentIdToScripts < ActiveRecord::Migration
  def change
    add_column :scripts, :pymt_id, :integer
  end
end
