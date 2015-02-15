class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :icon
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
