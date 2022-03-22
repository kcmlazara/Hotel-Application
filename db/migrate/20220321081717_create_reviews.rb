class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :hotel, null: false, foreign_key: true
      t.text :content_review

      t.timestamps
    end
  end
end
