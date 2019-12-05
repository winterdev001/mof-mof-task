class RemoveFieldsFromProperty < ActiveRecord::Migration[5.0]
  def change
    remove_column :properties, :rent, :string
    remove_column :properties, :adress, :string
    remove_column :properties, :building_age, :string
    remove_column :properties, :remarks, :text
    remove_column :properties, :name_of_railway_line, :string
    remove_column :properties, :statation_name, :string
    remove_column :properties, :how_many_minutes_walks, :string
    remove_column :properties, :name_of_railway_line1, :string
    remove_column :properties, :statation_name1, :string
    remove_column :properties, :how_many_minutes_walks1, :string
  end
end
