class FourM < Sinatra::Base

  get('/spaces') do
    @users = User.first
    @spaces = Space.all
    erb :'spaces/index'
  end

  get('/spaces/new') do
    erb :'spaces/new'
  end

  post('/spaces') do
    start_date = params[:start_date]
    end_date = params[:end_date]
    Space.create(space_name: params[:space_name], description: params[:description], price: params[:price], start_date: start_date, end_date: end_date)
    redirect('/spaces')
  end
end
