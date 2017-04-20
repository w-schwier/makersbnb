class Space
  include DataMapper::Resource

  belongs_to :user
  has n, :requests
  has n, :bookings

  property :id, Serial
  property :space_name, Text, :required => true
  property :description, Text, :required => true
  property :price, Float, :required => true
  property :start_date, Date, :required => true
  property :end_date, Date, :required => true


end
