class ReservationsController < ApplicationController
  def import
    if params[:file].nil?
      redirect_to import_reservations_path, alert: "Please select a file to import."
    else
      Reservation.import(params[:file])
      redirect_to reservations_path, notice: "File imported successfully."
    else
      redirect_to import_reservations_path, alert: "Failed to import file."
    end
  end

  def show_indicators
    @number_of_reservations = Reservation.count
    @number_of_unique_buyers = Reservation.distinct.count(:email)
    @average_buyer_age = Reservation.average(:age).to_i
    @average_price_per_representation = Reservation.average(:prix).round(2)
  end
end
