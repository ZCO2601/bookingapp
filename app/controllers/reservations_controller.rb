class ReservationsController < ApplicationController
  def import_form
    Reservation.import(params[:file])
    redirect_to reservations_path, notice: "Reservations imported."
  end

  def show_indicators
    @number_of_reservations = Reservation.count
    @number_of_unique_buyers = Reservation.distinct.count(:email)
    @average_buyer_age = Reservation.average(:age).to_i
    @average_price_per_representation = Reservation.average(:price).round(2)
  end
end
