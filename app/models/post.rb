class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :body, type: String
  field :title, type: String

  validates_presence_of :body, :title
end
