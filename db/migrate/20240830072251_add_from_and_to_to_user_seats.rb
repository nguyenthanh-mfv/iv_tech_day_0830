class AddFromAndToToUserSeats < ActiveRecord::Migration[7.2]
  def change
    add_column :user_seats, :from, :datetime
    add_column :user_seats, :to, :datetime
  end
end
