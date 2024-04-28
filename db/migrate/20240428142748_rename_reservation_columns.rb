class RenameReservationColumns < ActiveRecord::Migration[7.1]
  def change
    rename_column :reservations, :ticket_number, :Numero_billet
    rename_column :reservations, :reservation_number, :Reservation
    rename_column :reservations, :reservation_date, :Date_reservation
    rename_column :reservations, :reservation_time, :Heure_reservation
    rename_column :reservations, :show_key, :Cle_spectacle
    rename_column :reservations, :show_name, :Spectacle
    rename_column :reservations, :representation_key, :Cle_representation
    rename_column :reservations, :representation_name, :Representation
    rename_column :reservations, :representation_date, :Date_representation
    rename_column :reservations, :representation_time, :Heure_representation
    rename_column :reservations, :representation_end_date, :Date_fin_representation
    rename_column :reservations, :representation_end_time, :Heure_fin_representation
    rename_column :reservations, :price, :Prix
    rename_column :reservations, :product_type, :Type_de_produit
    rename_column :reservations, :sales_channel, :Filiere_de_vente
    rename_column :reservations, :first_name, :Nom
    rename_column :reservations, :last_name, :Prenom
    rename_column :reservations, :email, :Email
    rename_column :reservations, :address, :Adresse
    rename_column :reservations, :postal_code, :Code_postal
    rename_column :reservations, :country, :Pays
    rename_column :reservations, :age, :Age
    rename_column :reservations, :gender, :Sexe
  end
end
