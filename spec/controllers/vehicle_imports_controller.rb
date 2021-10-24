require 'rails_helper'

RSpec.describe VehicleImportsController, type: :controller do
  describe ' Import vehicles and customer data ' do
    describe '#new ' do 
      it 'has a 200 status code' do
        get :new
        expect(response.status).to eq(200)
      end
    end 
  end
end