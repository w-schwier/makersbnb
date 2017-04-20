class FourM < Sinatra::Base

  post '/bookings' do
    # request = params[:booking]
    request = Request.first(id: params[:booking])
    @booking = request.confirm_booking
    request.destroy
    #  require 'pry'; binding.pry
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
