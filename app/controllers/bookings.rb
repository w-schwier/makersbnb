class FourM < Sinatra::Base

  post '/bookings' do
    request = Request.first(id: params[:booking])
    @booking = request.confirm_booking
    all_request = Request.all(requested_date: request.requested_date)
    request.destroy
    all_request.destroy
    redirect('/requests/confirmations')
  end

  get '/requests/confirmations' do
    @bookings = Booking.all(user_id: current_user.id)
    erb :'requests/confirmations'
  end


end
