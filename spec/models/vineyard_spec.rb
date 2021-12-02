require 'capybara'
require 'rails_helper'

RSpec.describe 'Vineyard index' do 
# RSpec.describe Vineyard, type: :model do
    it 'exists' do
        vineyard = Vineyard.create
        expect(vineyard).to be_a(Vineyard)
        expect(Vineyard.count).to eq(1)
    end

    it 'has attributes' do
        vineyard = Vineyard.create!(name: "Willamette Valley", organic: true, years_established: 15)
        expect(vineyard.name).to eq("Willamette Valley")
        expect(vineyard.organic).to eq(true)
        expect(vineyard.years_established).to eq(15)
    end

    it 'goes to vineyard page' do
      vineyard1 = Vineyard.create!(name: "Willamette Valley", organic: true, years_established: 15)
      vineyard2 = Vineyard.create!(name: "Pikachu Valley", organic: true, years_established: 10)

      visit "/vineyards"
      expect(page).to have_content([vineyard1, vineyard2])
    end

end
