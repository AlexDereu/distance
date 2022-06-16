class CreateVilles < ActiveRecord::Migration[7.0]
  def change
    create_table :villes do |t|
      t.string :name
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
