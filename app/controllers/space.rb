class FourM < Sinatra::Base

  get('/spaces') do
    @spaces = Space.all
    erb :'spaces/index'
  end

  get('/spaces/new') do
    erb :'spaces/new'
  end

  post('/spaces') do
    Space.create(space_name: params[:space_name])
    redirect('/spaces')
  end
end
