class BookDecorator < Draper::Decorator
  delegate_all

    def released_date
      book.released_on.strftime("%Y年%m月%d日")
    end

end
