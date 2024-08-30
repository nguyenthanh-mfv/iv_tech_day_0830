class AddRowColumnAndAvailableToSeats < ActiveRecord::Migration[7.2]
  def change
    add_column :seats, :row, :integer
    add_column :seats, :column, :integer
    add_column :seats, :available, :boolean
  end
end
