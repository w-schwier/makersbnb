feature 'sign up' do

  scenario 'user signs up succesfully' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content("Welcome Mario")
    expect(User.first.email).to eq 'me@me.com'
  end

  scenario 'Can not sign up without email address' do
    expect { sign_up(email: nil) }.not_to change(User, :count)
    expect(current_path).to eq('/users')
    expect(page).to have_content('Email must not be blank')
  end

  scenario 'Email address has to be valid' do
    expect { sign_up(email: 'supermario@nintendo')}.not_to change(User, :count)
    expect(current_path).to eq('/users')
    expect(page).to have_content('Email has an invalid format')
  end

  scenario "Can't sign up if email address is already registered on the website" do
    sign_up
    expect { sign_up }.not_to change(User, :count)
    expect(current_path).to eq('/users')
    expect(page).to have_content('Email is already taken')
  end

  scenario "Password and confirmation password have to match to be able to sign up" do
    expect { sign_up(password_confirmation: '123456789') }.not_to change(User, :count)
    expect(current_path).to eq('/users')
    expect(page).to have_content('Password does not match the confirmation')
  end

end
