class AddChatFieldsToScritps < ActiveRecord::Migration
  def change
    add_column :scripts, :chat_history, :string
    add_column :scripts, :chat_entry, :string
  end
end
