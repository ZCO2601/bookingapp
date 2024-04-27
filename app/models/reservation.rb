class Reservation < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Reservation.create! row.to_hash
    end
  end
  
end
