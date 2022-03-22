class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.text :description
      t.string :address
      t.references :country, null: false, foreign_key: true
      t.float :price
      t.string :contact_number

      t.timestamps
    end
  end
end
