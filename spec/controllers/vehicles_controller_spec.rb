require 'rails_helper'

RSpec.describe VehiclesController, type: :controller do
  describe ' Import vehicles and customer data ' do
    let!(:vehicles) { create_list(:vehicle, 10) }
    let!(:vehicle_to_be_searched_by_model) { create(:vehicle, model: 'xyz') }

    describe '#index ' do 
      it 'loads all vehicles by default' do
        get :index
        expect(response.status).to eq(200)
        expect(@controller.view_assigns["vehicles"].count).to eq(11)
      end

      it 'loads all vehicles by default' do
        get :index, params: {
          search: 'xyz'
        }
        expect(response.status).to eq(200)
        expect(@controller.view_assigns["vehicles"].count).to eq(1)
      end
    end 
  end
end