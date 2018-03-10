module ApplicationHelper

  def image_url(book)
    if book.image.present?
      url = book.image
    else
      url = '/assets/noimage_m.png'
    end
  end

  def released_date(book)
    if book.released_on.present?
      released_date = '(' + book.decorate_released_on + '発売)'
    else
      released_date = ''
    end
  end

end
