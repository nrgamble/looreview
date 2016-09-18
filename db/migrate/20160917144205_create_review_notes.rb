class CreateReviewNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :review_notes do |t|
      t.references :review, foreign_key: true
      t.references :note, foreign_key: true
      # t.belongs_to :review, index: true
      # t.belongs_to :note, index: true

      t.timestamps
    end
  end
end
