class FourM < Sinatra::Base

  get '/session/new' do
    erb :'session/new'
  end

  post '/session' do
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect to('/spaces')
    else
      flash.now[:errors] = ['The email or password is incorrect']
      erb :'session/new'
    end
  end

  delete '/session' do
    session[:user_id] = nil
    flash.keep[:notice] = 'You succesfully signed out.'
    redirect to('/session/new')
  end

end
