class AddTripToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :user, foreign_key: true
    remove_foreign_key :users
  end
end
