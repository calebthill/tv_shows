require 'rails_helper'

feature 'User adds charater to television show' do

  it 'creates a new charater' do

    tvshow = TelevisionShow.create(title: "James Bond 2")

    visit television_show_path(tvshow)

    fill_in 'Character name', with: 'James Bond'
    fill_in 'Actor name', with: 'Daniel Craig'

    click_button 'Create Character'

    expect(page).to have_content('James Bond')
    expect(page).to have_content('Daniel Craig')
  end
end

