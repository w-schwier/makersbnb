class FourM < Sinatra::Base

  post '/set_space' do
    space_id = params[:space]
    redirect "/requests/new/#{space_id.to_sym}"
  end

  get '/requests/new/:id' do
    @space = Space.first(id: params[:id])
    erb :'guest/requests/new'
  end

  post '/requests' do
    Request.create(requested_date: params[:requested_date],
                   space_id: params[:space_id],
                   user_id: current_user.id)
    redirect to( "/guest/requests")
  end

  get '/guest/requests' do
    @requests = Request.all(user_id: current_user.id)
    # require 'pry'; binding.pry
    erb :'guest/requests/index'
  end

  get '/host/requests' do
    @requests = Request.all
    erb :'host/requests/index'
  end

end
