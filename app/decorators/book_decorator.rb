class BookDecorator < Draper::Decorator
  delegate_all

  def decorate_released_on
    book.released_on.strftime("%Y年%m月%d日")
  end

end
