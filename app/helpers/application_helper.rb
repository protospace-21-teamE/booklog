module ApplicationHelper

  def image_url(book)
    book.image.present? ? url = book.image : url = '/assets/noimage_m.png'
  end

  def released_date(book)
    book.released_on.present? ? released_date = '(' + book.decorate_released_on + '発売)' : released_date = ''
  end

end
