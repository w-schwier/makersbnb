feature 'Sign in' do

  let!(:user) {User.create(name: 'Super',
                           surname: 'Mario',
                           email: 'me@me.com',
                           password: '12345678')}

  scenario 'user signs in with valid credentials' do
    sign_in(email: 'me@me.com', password: '12345678')
    expect(current_path).to eq('/spaces')
  end


end
