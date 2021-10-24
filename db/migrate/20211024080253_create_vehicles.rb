class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :email
      t.string :nationality
      t.string :model
      t.integer :year
      t.bigint :chassis_number
      t.string :color
      t.date :registration_date
      t.integer :odometer_reading

      t.timestamps
    end
  end
end