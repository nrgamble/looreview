class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :loo, foreign_key: true
      t.references :trip
      t.integer :stars
      t.text :comments

      t.timestamps
    end
  end
end
