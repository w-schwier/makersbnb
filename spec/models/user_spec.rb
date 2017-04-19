describe User do

  let!(:user) do
    User.create(name: 'Super',
                surname: 'Mario',
                email: 'me@me.com',
                password: '12345678',
                password_confirmation: '12345678')
  end

  it 'authenticates when given a valid email and password combination' do
    authenticated_user = User.authenticate(user.email, user.password)
    expect(authenticated_user).to eq user
  end

  it 'does not authenticate when given an invalid email and password combination (incorrect email)' do
    invalid_user = User.authenticate('berry@face.com', user.password)
    expect(invalid_user).not_to eq user
  end

  it 'does not authenticate when given an invalid email and password combination (incorrect password)' do
    invalid_user = User.authenticate(user.email, 'password')
    expect(invalid_user).not_to eq user
  end
end
