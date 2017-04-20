class Request
  include DataMapper::Resource

  belongs_to :space
  belongs_to :user

  property :id, Serial
  property :requested_date, Date


  def confirm_booking
    Booking.create(date: self.requested_date,
                   user: self.user)
  end

end
