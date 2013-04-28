class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :body, type: String

  validates_presence_of :body
end
