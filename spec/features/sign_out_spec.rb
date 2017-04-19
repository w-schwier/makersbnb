feature 'sign out' do

  scenario 'Can sign out if we signed in' do
    sign_up
    click_button('Sign Out')
    expect(current_path).to eq('/session/new')
    expect(page).to have_content('You succesfully signed out.')
  end

end
