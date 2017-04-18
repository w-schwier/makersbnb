feature "adding spaces" do
  scenario "user can add space" do
    sign_up
    visit('/spaces/new')
    fill_in :space_name, with: "JJ's sexy pad"
    click_button "list space"
    expect(page).to have_content("JJ's sexy pad")
  end
end
