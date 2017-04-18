class Space
  include DataMapper::Resource

  property :id, Serial
  # dspace :user, String
  property :space_name, String
  property :description, Text
  property :price, String

end
