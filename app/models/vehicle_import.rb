require 'csv'

class VehicleImport
  include ActiveModel::Model
  include ActiveModel::Validations

  attr_accessor :import_file
  validates :import_file, presence: true

  def save
    vehicles = []

    converter = lambda { |header| header.underscore.to_sym }
    CSV.foreach(import_file.path, headers: true, header_converters: converter) do |csv_row|
      row = csv_row.to_hash

      row.merge!({
        created_at: Time.now,
        updated_at: Time.now
      })

      vehicles << row
    end

    Vehicle.upsert_all(
      vehicles
    )

    true
  end

end