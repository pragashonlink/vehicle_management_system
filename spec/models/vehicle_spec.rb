require 'rails_helper'

RSpec.describe Vehicle, :type => :model do
  let!(:vehicles) { create_list(:vehicle, 10) }
  let!(:vehicle_to_be_searched_by_name) { create(:vehicle, name: 'Pragash Rajarathnam') }
  let!(:vehicle_to_be_searched_by_model) { create(:vehicle, model: 'xyz') }

  it 'returns all vehicles' do
    vehicles = Vehicle.search(nil)

    expect(vehicles.count).to eq(12)
  end

  it 'it returns results matching customer name' do
    vehicles = Vehicle.search('pragash')

    expect(vehicles.count).to eq(1)
  end

  it 'it returns results matching model name' do
    vehicles = Vehicle.search('xyz')

    expect(vehicles.count).to eq(1)
    expect(vehicles[0].model).to eq('xyz')
  end
end