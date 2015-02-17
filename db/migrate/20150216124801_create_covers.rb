class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|
      t.integer :user_id
      t.string :cover

      t.timestamps
    end
  end
end
