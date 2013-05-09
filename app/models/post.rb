class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :body, type: String
  field :title, type: String
  field :archived, type: Boolean, default: false

  validates_presence_of :body, :title

  belongs_to :user

end
