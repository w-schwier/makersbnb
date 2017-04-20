class Booking
  include DataMapper::Resource

  belongs_to :request
  belongs_to :user

  property :id, Serial
  property :date, Date

end
