class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.bigint :price_current
      t.string :subdivision
      t.string :region
      t.string :district
      t.string :map_area
      t.string :property_type
      t.integer :mls_id
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :half_bathrooms
      t.integer :number_of_rooms
      t.integer :lot_sqftsqft_total
      t.integer :closed_area
      t.integer :open_area
      t.string :style
      t.string :remodelled
      t.string :possession
      t.string :remarks_es
      t.string :unique_id
      t.integer :monthly_assessment
      t.text :interior_features
      t.text :exterior_features
      t.text :other_services
      t.string :lot_shape
      t.text :directions_es
      t.text :web_title_es
      t.string :access
      t.string :roof
      t.string :flooring
      t.string :water
      t.string :construction
      t.integer :parking_spaces
      t.text :internal_features
      t.string :link
      t.string :leter
      t.string :a1
      t.string :a2
      t.string :a3
      t.string :a4
      t.string :a5
      t.string :a6
      t.string :a8
      t.string :a9
      t.string :a10

      t.timestamps
    end
  end
end
