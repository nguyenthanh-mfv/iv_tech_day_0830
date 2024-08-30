class UserSeat < ApplicationRecord
  belongs_to :seat
  belongs_to :user
end
