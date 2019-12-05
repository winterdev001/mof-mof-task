class CreatePropertyNests < ActiveRecord::Migration[5.0]
  def change
    create_table :property_nests do |t|
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
