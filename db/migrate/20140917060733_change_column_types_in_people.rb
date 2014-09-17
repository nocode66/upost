class ChangeColumnTypesInPeople < ActiveRecord::Migration
  def up
    remove_column :people, :country
    remove_column :people, :city
    add_reference :people, :country, index: true
    add_reference :people, :city, index: true
  end
  def down
    remove_column :people, :country_id
    remove_column :people, :city_id
    add_column :people, :country, :string
    add_column :people, :city, :string
  end
end
