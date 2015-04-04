module ThingsHelper
  def featured_image(thing)
    thing.featured_image || asset_path('things/default-image.png')
  end
end
