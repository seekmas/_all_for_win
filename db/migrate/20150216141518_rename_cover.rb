class RenameCover < ActiveRecord::Migration
  def change
    rename_column :covers, :user_id, :alias_id
  end
end
