require 'rails_helper'

RSpec.describe VehicleImportsController, type: :controller do
  describe ' Import vehicles and customer data ' do
    let(:upload_file) { Rack::Test::UploadedFile.new('spec/fixtures/vehicles_test_file.csv', 'application/csv') }

    describe '#new ' do 
      it 'has a 200 status code' do
        get :new
        expect(response.status).to eq(200)
      end
    end 

    describe '#create ' do 
      it 'redirects to vehicles page' do
        post :create, params: {
          vehicle_import: {
            import_file: upload_file
          }
        }

        expect(response.status).to eq(204)
      end
    end 
  end
end