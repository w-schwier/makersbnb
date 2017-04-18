feature "adding spaces" do

  scenario "user can list space" do
    visit('/spaces/new')
    fill_in :space_name, with: "JJ's sexy pad"
    fill_in :description, with: "JJ's sexy pad is nice!"
    fill_in :price, with: "£5,000"
    expect{click_button("list space")}.to change(Space, :count).by(1)
    expect(page).to have_content("JJ's sexy pad")
  end

  scenario "user can add name" do
    visit('/spaces/new')
    fill_in :space_name, with: "JJ's sexy pad"
    fill_in :description, with: "JJ's sexy pad is nice!"
    fill_in :price, with: "£5,000"
    click_button "list space"
    expect(page).to have_content("JJ's sexy pad")
  end

  scenario "user can add description" do
    visit('/spaces/new')
    fill_in :space_name, with: "JJ's sexy pad"
    fill_in :description, with: "JJ's sexy pad is nice!"
    fill_in :price, with: "£5,000"
    click_button "list space"
    expect(page).to have_content("JJ's sexy pad is nice!")
  end

  scenario "user can add price per night" do
    visit('/spaces/new')
    fill_in :space_name, with: "JJ's sexy pad"
    fill_in :description, with: "JJ's sexy pad is nice!"
    fill_in :price, with: "£5,000"
    click_button "list space"
    expect(page).to have_content("£5,000")
  end
end
