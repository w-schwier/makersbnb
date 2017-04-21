feature "Confirm booking" do

  before do
    sign_up
    list_space
    click_button('Sign Out')
    sign_up(name: 'Luigi', surname: 'Bros', email: 'dog@dog.com')
    make_requests
    click_button('Sign Out')
    sign_in
  end

scenario "test" do
  visit '/requests'
  expect(page).to have_content('Host: Mario')
  expect(page).to have_content('2017-05-25')
end
  # let! :request do
  #   Request.create(id: 1,
  #                  requested_date: 2001-05-25)
  # end

  scenario "host can see request" do
    visit '/requests'
    expect(page).to have_content('2017-05-25')
  end

  scenario "Host can confirm a request" do
    visit '/requests'
    click_button "Confirm"
    expect(current_path).to eq '/requests/confirmations'
    expect(page).to have_content 'confirmed'
    expect(page).to have_content '2017-05-25'
  end

  scenario "Checks that requests are deleted after confirmation" do
    visit '/requests'
    expect{click_button "Confirm"}.to change(Request, :count).by(-1)
  end

  scenario "Checks that all requests with the same date are deleted after confirmation" do
    make_requests
    visit '/spaces'
    make_requests
    visit '/requests'
    expect{click_button(1)}.to change(Request, :count).by(-2)
  end

end
