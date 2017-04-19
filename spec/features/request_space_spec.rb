feature 'request a space' do

  before do
    sign_up
    list_space
  end

  scenario 'user can select a date' do
      click_button('Request Space')
      fill_in :requested_date, with: "25/05/2001"
      click_button('Request')
      expect(page).to have_content("25/05/2001")
  end
end
