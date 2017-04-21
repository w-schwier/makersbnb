feature 'request a space' do

  before do
    sign_up
    list_space
    click_button('Sign Out')
    sign_up(email: 'dog@dog.come')
  end

  scenario 'user can select a date' do
      click_button('Request Space')
      fill_in :requested_date, with: "25/05/2001"
      click_button('Request')
      expect(page).to have_content("2001-05-25")
  end

  scenario 'user can select a date' do
      click_button('Request Space')
      fill_in :requested_date, with: "25/05/2001"
      click_button('Request')
      expect(page).to have_content("JJ's sexy pad")
  end

  scenario 'user can select a date' do
      click_button('Request Space')
      fill_in :requested_date, with: "25/05/2001"
      click_button('Request')
      expect(page).to have_content("Mario's requests:")
  end

  scenario 'user cannot select a date that has already been booked' do
    click_button('Request Space')
    fill_in :requested_date, with: "25/05/2001"
    click_button('Request')
    # click_button('Sign Out')
    # sign_in
    # visit '/requests'
    click_button "Confirm"
    click_button "Sign Out"
    sign_in(email: 'dog@dog.come')
    visit '/spaces'
    click_button('Request Space')
    fill_in :requested_date, with: "25/05/2001"
    expect(page).to have_content("Date is already booked. Please select another date")
  end
end
