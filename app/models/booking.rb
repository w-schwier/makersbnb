class Booking
  include DataMapper::Resource

  # belongs_to :request
  belongs_to :user
  belongs_to :space

  property :id, Serial
  property :date, Date

end
