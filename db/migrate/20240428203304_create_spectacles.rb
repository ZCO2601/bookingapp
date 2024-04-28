class CreateSpectacles < ActiveRecord::Migration[7.1]
  def change
    create_table :spectacles do |t|
      t.string :nom

      t.timestamps
    end
  end
end
