class CreateCheckins < ActiveRecord::Migration[7.2]
  def change
    create_table :checkins do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :checkin_at

      t.timestamps
    end
  end
end
