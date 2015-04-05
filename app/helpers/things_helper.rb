module ThingsHelper
  def featured_image(thing)
    thing.featured_image || asset_path('things/default-image.png')
  end

  def featured_image_url(thing)
    request.protocol + request.host_with_port + featured_image(thing)
  end
end