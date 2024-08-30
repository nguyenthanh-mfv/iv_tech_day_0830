class Seat < ApplicationRecord
  after_create :generate_qr_code

  has_many :user_seats

  def qr_code_path
    "/qr_codes/seat_#{self.id}.png"
  end

  def generate_qr_code
    url = Rails.application.routes.url_helpers.update_availability_seat_url(self.id, host: 'http://localhost:3000')
    qrcode = RQRCode::QRCode.new(url)

    # Save the QR code as a PNG file
    png = qrcode.as_png(
      resize_gte_to: false,
      resize_exactly_to: false,
      fill: 'white',
      color: 'black',
      size: 300,
      border_modules: 4,
      module_px_size: 6,
      file: nil # You can specify a file path here
    )

    # Save the PNG file to a specific location
    File.open(Rails.root.join('public', 'qr_codes', "seat_#{self.id}.png"), 'wb') do |file|
      file.write(png.to_s)
    end
  end
end
