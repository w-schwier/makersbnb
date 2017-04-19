feature "adding spaces" do

  before do
    sign_up
    list_space
  end

  scenario "user can list space" do
    visit('/spaces/new')
    fill_in :space_name, with: "JJ's sexy pad"
    fill_in :description, with: "JJ's sexy pad is nice!"
    fill_in :price, with: 5000
    fill_in :start_date, with: "30/04/2001"
    fill_in :end_date, with: "30/05/2001"
    expect{click_button("list space")}.to change(Space, :count).by(1)
  end

  scenario "user can add name" do
    expect(page).to have_content("JJ's sexy pad")
  end

  scenario "user can add description" do
    expect(page).to have_content("JJ's sexy pad is nice!")
  end

  scenario "user can add price per night" do
    expect(page).to have_content(5000)
  end

  scenario "user can add available dates" do
    expect(page).to have_content("2001-04-30")
    expect(page).to have_content("2001-05-30")
  end
end
