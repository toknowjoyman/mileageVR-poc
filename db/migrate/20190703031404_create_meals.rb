class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
