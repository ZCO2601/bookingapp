class ReservationsController < ApplicationController
  def import
    if params[:file].present?
      CSV.foreach(params[:file].path, headers: true, col_sep: ';') do |row|
        mapped_row = row.to_h.transform_keys { |key| key.gsub(" ", "_") }
        Reservation.create(mapped_row)
      end
      redirect_to import_summary_reservations_path, notice: "CSV importés avec succès !"
    else
      redirect_to reservations_path, alert: "Veuillez fournir un fichier CSV."
    end
  end

  def import_summary
    @reservations = Reservation.all
  end

  def show_indicators
    @reservations = Reservation.all
    @number_of_reservations = Reservation.count
    @number_of_unique_buyers = Reservation.distinct.count(:email)
    @average_buyer_age = Reservation.average(:age).to_i
    @average_price_per_representation = @reservations.group(:Representation).average(:prix)
  end
end
