class AddAttachment < ActiveRecord::Migration
  def self.up
    add_attachment :aliases, :avatar
  end

  def self.down
    remove_attachment :aliases, :avatar
  end
end
