module ThingsHelper
  def featured_image(thing)
    thing.featured_image || asset_path('placeholder-image.png')
  end
end
