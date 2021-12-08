require 'rails_helper'

RSpec.describe Trainer, type: :feature do
  it 'reveals attributes of specified trainer' do
    ash = Trainer.create!(name: "Ash Ketchum", age: 11, awake: true)

    visit "/trainers/#{ash.id}"
    expect(page).to have_content(ash.name)
    expect(page).to have_content(ash.age)
    expect(page).to have_content(ash.awake)
  end
end
