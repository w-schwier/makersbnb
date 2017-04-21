class FourM < Sinatra::Base

  post '/set_space' do
    space_id = params[:space]
    redirect "/requests/new/#{space_id.to_sym}"
  end

  get '/requests/new/:id' do
    @space = Space.first(id: params[:id])
    erb :'requests/new'
  end

  post '/requests' do
    if Booking.first(date: params[:requested_date])
      flash.keep[:errors] = ['Date is already booked. Please select another date']
       booking = Booking.first(date: params[:requested_date])
       redirect "/requests/new/#{booking.space.id}"
    else
      Request.create(requested_date: params[:requested_date],
                    space_id: params[:space_id],
                    user_id: current_user.id)
      redirect to( "/requests")
    end
  end

  get '/requests' do
    @requests = Request.all(user_id: current_user.id)
    erb :'requests/index'
  end

end
