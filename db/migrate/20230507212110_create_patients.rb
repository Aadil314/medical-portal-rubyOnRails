class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :doctor_name
      t.date :appointment_date
      t.time :appointment_time

      t.timestamps
    end
  end
end
