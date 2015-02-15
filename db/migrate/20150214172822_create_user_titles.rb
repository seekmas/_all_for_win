class CreateUserTitles < ActiveRecord::Migration
  def change
    create_table :user_titles do |t|
      t.belongs_to :user, index: true
      t.belongs_to :title, index: true
      t.timestamps
    end
  end
end
