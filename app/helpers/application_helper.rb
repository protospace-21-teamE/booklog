module ApplicationHelper

  def image_url(book)
    if book.image.present?
      url = book.image
    else
      url = '/assets/noimage_m.png'
    end
  end
end
