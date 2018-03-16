module ApplicationHelper

  def image_url(book)
    book.image.present? ? url = book.image : url = '/assets/noimage_m.png'
  end

  def released_date(book)
    book.released_on.present? ? released_date = '(' + book.decorate_released_on + '発売)' : released_date = ''
  end

  def media_type(book)
    book.media_type == 0 ? "本 /" : "電子書籍 /"
  end

  def released_on(book)
    book.released_on.present? ? "#{book.released_on.strftime("%Y年%-m月%d日")} /" : ""
  end

end
