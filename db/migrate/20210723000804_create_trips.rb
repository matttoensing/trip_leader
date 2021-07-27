class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :river
      t.string :grade
      t.date :starting_date
      t.date :end_date

      t.timestamps
    end
  end
end
