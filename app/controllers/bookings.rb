class FourM < Sinatra::Base

  post '/bookings' do
    request = Request.first(id: params[:booking])
    @booking = request.confirm_booking
    all_request = Request.all(requested_date: request.requested_date)
    request.destroy
    all_request.destroy
    redirect('/host/requests/bookings')
  end

  get '/host/requests/bookings' do
    @bookings = Booking.all
    erb :'host/requests/bookings'
  end

  get '/guest/requests/bookings' do
    @bookings = Booking.all(user_id: current_user.id)
    erb :'guest/requests/bookings'
  end

end
