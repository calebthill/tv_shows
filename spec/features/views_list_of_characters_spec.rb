require 'rails_helper'

feature 'user view a list of peoples favorite TV characters' do

  it 'shows list of characters' do

    tvshow = TelevisionShow.create(title: "Skyfall")

    character1 = Character.create(character_name: "James Bond", actor_name: "Daniel Craig", television_show_id: tvshow.id )
    character2 = Character.create(character_name: "LALA", actor_name: "Daniel Craig", television_show_id: tvshow.id )

    visit characters_path

    expect(page).to have_content("James Bond")
    expect(page).to have_content("Skyfall")
    expect(page).to have_content("LALA")
  end
end
