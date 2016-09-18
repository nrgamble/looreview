class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.references :user, foreign_key: true
      t.references :loo
      t.datetime :started_at
      t.datetime :ended_at
      t.float :earnings

      t.timestamps
    end
  end
end
