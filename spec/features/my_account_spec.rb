feature 'My account' do

  before do
    sign_up
    list_space
    click_button('Sign Out')
    sign_up(email: 'will@will.com')
    list_space(space_name: 'Cave', description: "it's a cave!")
  end

  scenario 'only displays my spaces' do
    visit('/my/spaces')
    expect(page).to have_content('Cave')
    expect(page).not_to have_content("JJ's sexy pad")
  end
end
