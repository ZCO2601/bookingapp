# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_04_28_203304) do
  create_table "reservations", force: :cascade do |t|
    t.string "Numero_billet"
    t.string "Reservation"
    t.date "Date_reservation"
    t.time "Heure_reservation"
    t.string "Cle_spectacle"
    t.string "Spectacle"
    t.string "Cle_representation"
    t.string "Representation"
    t.date "Date_representation"
    t.time "Heure_representation"
    t.date "Date_fin_representation"
    t.time "Heure_fin_representation"
    t.integer "Prix"
    t.string "Type_de_produit"
    t.string "Filiere_de_vente"
    t.string "Nom"
    t.string "Prenom"
    t.string "Email"
    t.string "Adresse"
    t.string "Code_postal"
    t.string "Pays"
    t.integer "Age"
    t.string "Sexe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spectacles", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
