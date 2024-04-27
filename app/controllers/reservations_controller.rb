class ReservationsController < ApplicationController
  def import
    require 'csv'

    if params[:csv_file].present?
      csv_file = params[:csv_file].tempfile

      CSV.foreach(csv_file, headers: true, col_sep: ';') do |row|
        reservation = Reservation.new(
          ticket_number: row['Numero billet'],
          reservation_number: row['Reservation'],
          reservation_date: row['Date reservation'],
          reservation_time: row['Heure reservation'],
          show_key: row['Cle spectacle'],
          show_name: row['Spectacle'],
          representation_key: row['Cle representation'],
          representation_name: row['Representation'],
          representation_date: row['Date representation'],
          representation_time: row['Heure representation'],
          representation_end_date: row['Date fin representation'],
          representation_end_time: row['Heure fin representation'],
          price: row['Prix'],
          product_type: row['Type de produit'],
          sales_channel: row['Filiere de vente'],
          first_name: row['Prenom'],
          last_name: row['Nom'],
          email: row['Email'],
          address: row['Adresse'],
          postal_code: row['Code postal'],
          country: row['Pays'],
          age: row['Age'],
          gender: row['Sexe']
        )

        if reservation.save
          # Gérer l'enregistrement réussi
        else
          # Gérer l'échec de l'enregistrement
        end
      end
    else
      # Gérer le cas où aucun fichier n'a été téléchargé
    end
  end

  def index
    # Ajoutez du code pour l'action index si nécessaire
  end
end
