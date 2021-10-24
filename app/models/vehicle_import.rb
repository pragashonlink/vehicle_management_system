class VehicleImport
  include ActiveModel::Model

  attr_accessor :import_file
  validates :import_file, presence: true
end