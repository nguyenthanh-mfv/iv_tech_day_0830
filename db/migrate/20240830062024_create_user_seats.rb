class CreateUserSeats < ActiveRecord::Migration[7.2]
  def change
    create_table :user_seats do |t|
      t.references :seat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
