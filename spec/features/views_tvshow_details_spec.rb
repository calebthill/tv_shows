require 'rails_helper'

feature "user views a TV show's details", %Q{
  As a site visitor
  I want to view the details for a TV show
  So I can find learn more about it
  I can see a the show's title, network, the years it ran, and a synopsis.
} do

  # Acceptance Criteria:
  # * I can see a the show's title, network, the years it ran,
  # and a synopsis.

  scenario "user views a TV show's details" do
    show = TelevisionShow.create(title: 'Game of Thrones',
      network: 'HBO' )

    visit "/television_shows/#{show.id}"

    expect(page).to have_content show.title
    expect(page).to have_content show.network
    expect(page).to have_content show.years
    expect(page).to have_content show.synopsis
  end

  it "user sees character information" do
    show = TelevisionShow.create(title: 'Game of Thrones', network: 'HBO' )
    character1 = Character.create(character_name: "James Bond", actor_name: "Daniel Craig", description: "Amazing", television_show_id: show.id)

    visit "/television_shows/#{show.id}"

    expect(page).to have_content("James Bond")
    expect(page).to have_content("Daniel Craig")
    expect(page).to have_content("Amazing")
  end
end


