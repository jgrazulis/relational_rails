require 'rails_helper'

RSpec.describe Trainer, type: :feature do
  it 'reveals attributes of specified trainer' do
    ash = Trainer.create!(name: "Ash Ketchum", age: 11, awake: true)

    visit "/trainers/#{ash.id}"

    expect(page).to have_content(ash.name, ash.age, ash.awake)
  end


  # only has to have one bio
  # when you click the link to go to that trainer bio,

  # the link gives the right ID to show their particular bio
  # make each trainer on trainers page into a href.
  # clicking that href takes you to their page.


  # the page shows all of the attributes

  # this should be in view
  # view grabs a dynamic id
  # based on the id received, it should search the trainer table for matching
  # id.
  # when a matching ID is found, it displays that trainers bio.
  # in HTML, have the title display the (trainers) bio
  # in paragraphs grab each attribute and display it.
end
