class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.references :country, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.float :price
      t.string :contact_number
      t.integer :position
      
      t.timestamps
    end
  end
end
