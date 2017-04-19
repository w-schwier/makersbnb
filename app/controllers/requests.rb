class FourM < Sinatra::Base

  post '/set_space' do
    space = params[:space]
    redirect "/requests/#{space.to_sym}"
  end

  get '/requests/:id' do
    @space = Space.first(id: params[:id])
    erb :'requests/new'
  end

  post '/requests' do
    $test = params[:requested_date]
    redirect "/requests"
  end

  get '/requests' do
    @test = $test
    erb :'requests/index'
  end

end
