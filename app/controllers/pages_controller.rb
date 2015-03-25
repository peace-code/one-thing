class PagesController < ApplicationController
  def home
    @things = Thing.all
    @thing = @things.sample
  end

  def banner
  end
end
