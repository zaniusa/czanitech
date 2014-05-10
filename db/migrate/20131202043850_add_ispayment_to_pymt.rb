class AddIspaymentToPymt < ActiveRecord::Migration
  def change
    add_column :pymts, :is_requesting_pymt, :boolean
  end
end
