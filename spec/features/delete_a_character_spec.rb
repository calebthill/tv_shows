require 'rails_helper'

feature "Deletes a character from the character page" do

  it "deletes a character" do

    show = TelevisionShow.create(title: "AMAZING!")

    character = Character.create(character_name: "James Bond", actor_name: "Daniel Craig", television_show_id: show.id)

    visit '/characters'

    click_on 'delete'


    page.should have_no_content("James Bond")
    page.should have_no_content("Daniel Craig")
  end
end
