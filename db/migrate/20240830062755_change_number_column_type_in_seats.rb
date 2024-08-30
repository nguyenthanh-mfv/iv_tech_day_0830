class ChangeNumberColumnTypeInSeats < ActiveRecord::Migration[7.2]
  def change
    change_column :seats, :number, :integer
  end
end
