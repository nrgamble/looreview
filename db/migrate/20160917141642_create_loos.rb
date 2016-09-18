class CreateLoos < ActiveRecord::Migration[5.0]
  def change
    create_table :loos do |t|
      t.string :name
      t.float :lat
      t.float :long
      t.float :stars
      t.string :image

      t.timestamps
    end
  end
end
