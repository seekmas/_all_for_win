class AddAttachmentToTitle < ActiveRecord::Migration
  def self.up
    add_attachment :titles, :icon
  end

  def self.down
    remove_attachment :titles, :icon
  end
end
