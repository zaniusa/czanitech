class Script < ActiveRecord::Base

	before_save :concatenate_chat
	belongs_to :user

	def concatenate_chat
		if chat_entry_changed?
		    self.chat_history = "#{usertype} #{chat_entry}<hr>#{chat_history}".html_safe
		    self.chat_entry = ""
		end
	end

	def self.searchproject(search)
		if search
			find(:all, :conditions => ['LOWER(project) LIKE ?', "%#{search.downcase}%"], :order => "created_at DESC")
		else
			find(:all, :order => "created_at DESC")
		end
	end

	def self.searchdescr(search)
		if search
			find(:all, :conditions => ['LOWER(notes) LIKE ?', "%#{search.downcase}%"], :order => "created_at DESC")
		else
			find(:all, :order => "created_at DESC")
		end
	end
	
end
