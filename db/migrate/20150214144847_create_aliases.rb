class CreateAliases < ActiveRecord::Migration
  def change
    create_table :aliases do |t|
      t.string :name
      t.string :avatar
      t.integer :user_id

      t.timestamps
    end
  end
end
