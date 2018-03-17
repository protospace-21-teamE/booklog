module ApplicationHelper

  def image_url(book)
    book.image.present? ? url = book.image : url = '/assets/noimage_m.png'
  end

  def released_date(book)
    book.released_on.present? ? released_date = '(' + book.decorate_released_on + '発売)' : released_date = ''
  end

  def media_type(book)
    if book.media_type == 0
      content_tag :li, "本 /"
    else
      content_tag :li, "電子書籍 /"
    end
  end

  def released_on(book)
    if book.released_on.present?
      content_tag :li, "#{book.released_on.strftime("%Y年%-m月%d日")} /"
    end
  end

  def review_rate(review)
    review.rate.present? ? review.rate : 0
  end

  def shop_list
    ["amazon.jp", "amazon.com"]
  end

  def book_format_list
    ["本", "Kindleストア", "洋書", "DVD", "音楽", "ゲーム", "すべての商品"]
  end

end
