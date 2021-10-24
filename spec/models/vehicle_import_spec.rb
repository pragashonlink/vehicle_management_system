require 'rails_helper'

RSpec.describe VehicleImport, type: :model do
  describe '#upload' do
    let(:upload_file) { Rack::Test::UploadedFile.new('spec/fixtures/vehicles_test_file.csv', 'application/csv') }
    subject { VehicleImport.new }

    it 'has an attachment' do
      subject.import_file = upload_file
      expect(subject).to be_valid
    end
  end
end