class CreateSeats < ActiveRecord::Migration[7.2]
  def change
    create_table :seats do |t|
      t.string :number

      t.timestamps
    end
  end
end
