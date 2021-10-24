require 'rails_helper'

RSpec.describe VehicleImport, type: :model do
  describe '#upload' do
    let(:upload_file) { Rack::Test::UploadedFile.new('spec/fixtures/vehicles_test_file.csv', 'application/csv') }
    subject { VehicleImport.new }
    let(:vehicle_count) { Vehicle.count }

    it 'has an attachment' do
      subject.import_file = upload_file
      expect(subject).to be_valid
    end

    it 'does not have an attachment' do
      expect(subject).to_not be_valid
    end

    it 'imports data' do
      expect(subject).to_not be_valid

      subject.import_file = upload_file
      expect(subject.save).to eq(true)
      expect(vehicle_count).to be > 0
    end
  end
end