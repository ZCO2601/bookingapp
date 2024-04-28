require 'csv'

class Reservation < ApplicationRecord
  def self.import(file_path)
    CSV.foreach(file_path, headers: true) do |row|
      reservation = new(
        Numero_billet: row['Numero billet'],
        Reservation: row['Reservation'],
        Date_reservation: row['Date reservation'],
        Heure_reservation: row['Heure reservation'],
        Cle_spectacle: row['Cle spectacle'],
        Spectacle: row['Spectacle'],
        Cle_representation: row['Cle representation'],
        Representation: row['Representation'],
        Date_representation: row['Date representation'],
        Heure_representation: row['Heure representation'],
        Date_fin_representation: row['Date fin representation'],
        Heure_fin_representation: row['Heure fin representation'],
        Prix: row['Prix'],
        Type_de_produit: row['Type de produit'],
        Filiere_de_vente: row['Filiere de vente'],
        Nom: row['Nom'],
        Prenom: row['Prenom'],
        Email: row['Email'],
        Adresse: row['Adresse'],
        Code_postal: row['Code postal'],
        Pays: row['Pays'],
        Age: row['Age'],
        Sexe: row['Sexe']
      )

      if reservation.save
        puts "Reservation saved"
      else
        puts "Error saving reservation"
      end
    end
  end
end
