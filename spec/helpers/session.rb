module SessionHelpers

  def sign_up(email: 'me@me.com', password: '12345678', password_confirmation: '12345678', name: 'Mario', surname: 'Super')
    visit('/users/new')
    fill_in(:email, with: email)
    fill_in(:password, with: password)
    fill_in(:password_confirmation, with: password_confirmation)
    fill_in(:name, with: name)
    fill_in(:surname, with: surname)
    click_button('sign-up-btn')
  end

  def sign_in(email: 'me@me.com', password: '12345678')
    visit('/session/new')
    fill_in(:email, with: email)
    fill_in(:password, with: password)
    click_button('sign-in-btn')
  end


end
