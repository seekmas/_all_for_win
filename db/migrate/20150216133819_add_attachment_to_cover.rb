class AddAttachmentToCover < ActiveRecord::Migration
  def self.up
    add_attachment :covers, :cover
  end

  def self.down
    remove_attachment :covers, :cover
  end
end
