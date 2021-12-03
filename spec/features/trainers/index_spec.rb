require 'rails_helper'

RSpec.describe Trainer, type: :feature do
  it 'exists' do
      ash = Trainer.create
      expect(ash).to be_a(Trainer)
      expect(Trainer.count).to eq(1)
  end

  it 'has attributes' do
      ash = Trainer.create!(name: "Ash Ketchum", age: 11, awake: true)
      expect(ash.name).to eq("Ash Ketchum")
      expect(ash.age).to eq(11)
      expect(ash.awake).to eq(true)
  end
end
