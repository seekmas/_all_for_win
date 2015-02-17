class AddCommentByToComment < ActiveRecord::Migration
  def change
    add_column :comments , :alias_id , :integer
  end
end
