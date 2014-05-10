class ChangeChatHistTypeOnScripts < ActiveRecord::Migration
  def up
    change_column :scripts, :chat_history, :text
  end

  def down
    change_column :scripts, :chat_history, :string
  end
end
