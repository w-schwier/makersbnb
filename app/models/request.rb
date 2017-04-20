class Request
  include DataMapper::Resource

  belongs_to :space
  belongs_to :user

  property :id, Serial
  property :requested_date, Date

end
