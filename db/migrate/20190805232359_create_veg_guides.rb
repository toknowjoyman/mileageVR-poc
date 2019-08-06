class CreateVegGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :veg_guides do |t|

      t.timestamps
    end
  end
end
