class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :name
      t.boolean :is_positive

      t.timestamps
    end
  end
end
