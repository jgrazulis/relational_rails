require 'rails_helper'

RSpec.describe Vineyard, type: :model do
    it 'exists' do
        vineyard = Vineyard.create
        expect(vineyard).to be_a(Vineyard)
        expect(Vineyard.count).to eq(1)
    end

    it 'has attributes' do
        vineyard = Vineyard.create(name: "Willamette Valley", organic: true, years_established: 15)
        expect(vineyard.name).to eq("Willamette Valley")
        expect(vineyard.organic).to eq(true)
        expect(vineyard.years_established).to eq(15)

    end

end