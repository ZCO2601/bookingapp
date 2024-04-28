class ReservationsController < ApplicationController
  def import
    if params[:file].nil?
      redirect_to reservations_path, alert: "Please select a file to import."
    elsif File.extname(params[:file].original_filename) != ".csv"
      redirect_to reservations_path, alert: "Please select a CSV file to import."
    else
      Reservation.import(params[:file])
      redirect_to reservations_path, notice: "File imported successfully."
    end
  end

  def show_indicators
    if params[:spectacle_id].present?
      @spectacle = Spectacle.find(params[:spectacle_id])
      @number_of_reservations = Reservation.where(spectacle_id: params[:spectacle_id]).count
      @number_of_unique_buyers = Reservation.where(spectacle_id: params[:spectacle_id]).distinct.count(:email)
      @average_buyer_age = Reservation.where(spectacle_id: params[:spectacle_id]).average(:age).to_i
      @average_price_per_representation = Reservation.where(spectacle_id: params[:spectacle_id]).average(:prix).round(2)
    else
      @spectacles = Spectacle.all
      @number_of_reservations = Reservation.count
      @number_of_unique_buyers = Reservation.distinct.count(:email)
      @average_buyer_age = Reservation.average(:age).to_i
      @average_price_per_representation = Reservation.average(:prix).round(2)
    end
  end
end
