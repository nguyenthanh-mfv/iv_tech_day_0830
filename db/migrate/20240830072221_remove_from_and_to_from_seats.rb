class RemoveFromAndToFromSeats < ActiveRecord::Migration[7.2]
  def change
    remove_column :seats, :from, :string
    remove_column :seats, :to, :string
  end
end
