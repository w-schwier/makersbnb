class Space
  include DataMapper::Resource

  property :id, Serial
  # dspace :user, String
  property :space_name, String, :required => true
  property :description, Text, :required => true
  property :price, Float, :required => true
  property :start_date, Date, :required => true
  property :end_date, Date, :required => true

end
