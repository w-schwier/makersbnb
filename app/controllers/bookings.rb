class FourM < Sinatra::Base

  post '/bookings' do
    # request = params[:booking]
    request = Request.first(id: params[:booking])
    @booking = request.confirm_booking
    all_request = Request.all(requested_date: request.requested_date)
    #  require 'pry'; binding.pry
    request.destroy
    all_request.destroy
    # if condition
    #
    # end
    redirect('/requests/confirmations')
  end

  get '/requests/confirmations' do
    @bookings = Booking.all
    erb :'requests/confirmations'
  end


end
