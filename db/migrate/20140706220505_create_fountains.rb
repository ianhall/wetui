class CreateFountains < ActiveRecord::Migration
  def change
    create_table :fountains do |t|
      t.string :location
      t.text :photo_uri
      t.integer :updated_by

      t.timestamps
    end
  end
end
