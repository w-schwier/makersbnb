feature 'sign up' do

  scenario 'user signs up succesfully' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content("Welcome Mario")
    expect(User.first.email).to eq 'me@me.com'
  end

end
