module ApplicationHelper


  def photo_url(object, options = {}, missing_url="https://static.pexels.com/photos/7283/garden.jpg" )

    if object.photo_url
      return cl_image_path(object.photo, options)
    else
      photo_url = image_path(missing_url)
    end
  end
  
end
