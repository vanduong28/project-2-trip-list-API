class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      # a city can only be associated to one user
      t.references :user, null: false
      t.string :name
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
