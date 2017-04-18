class FourM < Sinatra::Base

  get '/users/new' do
    @user = User.new
    erb :'users/new'
  end

  post '/users' do
    @user = User.create(email: params[:email],
                        name: params[:name],
                        surname: params[:surname],
                        password: params[:password],
                        password_confirmation: params[:password_confirmation])
    if @user.save
      session[:user_id] = @user.id
      redirect to('/spaces')
    else
      erb :'users/new'
    end
  end



end
