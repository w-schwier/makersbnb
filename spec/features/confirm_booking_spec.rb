feature "Confirm booking" do

  before do
    sign_up
    list_space
  end

  # let! :request do
  #   Request.create(id: 1,
  #                  requested_date: 2001-05-25)
  # end

  scenario "host can see request" do
    make_requests
    expect(page).to have_content('2017-05-25')
  end

  scenario "Host can confirm a request" do
    make_requests
    visit '/requests'
    click_button "Confirm"
    expect(current_path).to eq '/requests/confirmations'
    expect(page).to have_content 'confirmed'
    expect(page).to have_content '2017-05-25'
  end

  scenario "Checks that requests are deleted after confirmation" do
    make_requests
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
