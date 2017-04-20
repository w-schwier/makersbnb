class FourM < Sinatra::Base

  post '/set_space' do
    space_id = params[:space]
    redirect "/requests/#{space_id.to_sym}"
  end

  get '/requests/:id' do
    @space = Space.first(id: params[:id])
    erb :'requests/new'
  end

  post '/requests' do
    Request.create(requested_date: params[:requested_date],
                   space_id: params[:space_id],
                   user_id: current_user.id)
    redirect "/requests"
  end

  get '/requests' do
    @requests = Request.all(user_id: current_user.id)
    erb :'requests/index'
  end

end
