class AddColumnsToPropertyNest < ActiveRecord::Migration[5.0]
  def change
    add_column :property_nests, :rent, :integer
    add_column :property_nests, :adress, :string
    add_column :property_nests, :building_age, :integer
    add_column :property_nests, :remarks, :text
    add_column :property_nests, :name_of_railway_line, :string
    add_column :property_nests, :statation_name, :string
    add_column :property_nests, :how_many_minutes_walks, :integer
    add_column :property_nests, :name_of_railway_line1, :string
    add_column :property_nests, :statation_name1, :string
    add_column :property_nests, :how_many_minutes_walks1, :integer
  end
end
