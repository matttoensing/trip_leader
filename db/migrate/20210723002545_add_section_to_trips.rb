class AddSectionToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :section, :string
  end
end
