require 'rails_helper'

RSpec.describe Reservation, type: :model do
  it "is valid with a ticket number" do
    reservation = Reservation.new(ticket_number: "123456")
    expect(reservation).to be_valid
  end
end


