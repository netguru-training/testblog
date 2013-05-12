class PostDecorator < Draper::Decorator
  decorates :post
  delegate_all
end
