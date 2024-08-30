class AddFromAndToToSeats < ActiveRecord::Migration[7.2]
  def change
    add_column :seats, :from, :datetime
    add_column :seats, :to, :datetime
  end
end
