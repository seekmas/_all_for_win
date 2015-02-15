class AddAuthHash < ActiveRecord::Migration
  def change
    add_column  :users, :auth_hash, :text
  end
end
