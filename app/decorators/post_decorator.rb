class PostDecorator < Draper::Decorator
  decorates :post
  delegate_all

  def friendly_title
    title.gsub(' ', '-').downcase
  end

  def truncated_body
    h.raw h.truncate(body, length: 200, omission: "...")
  end
end
