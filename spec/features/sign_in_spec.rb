feature 'Sign in' do

  let!(:user) do
    User.create(name: 'Super',
                surname: 'Mario',
                email: 'me@me.com',
                password: '12345678',
                password_confirmation: '12345678')
  end

  scenario 'with correct credentials' do
    sign_in(email: user.email, password: user.password)
    expect(current_path).to eq('/spaces')
    expect(page).to have_content('Welcome Super')
  end

  scenario 'cannot sign in with invalid credentials' do
    sign_in(email: 'berry@feet.com', password: user.password)
    expect(current_path).to eq('/session')
    expect(page).to have_content('The email or password is incorrect')
  end
end
