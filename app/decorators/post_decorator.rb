class PostDecorator < Draper::Decorator
  decorates :post
  delegate_all

  def friendly_title
    title.gsub(' ', '-').downcase
  end
end
