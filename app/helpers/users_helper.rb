module UsersHelper
  def excerpt(text)
    raw(truncate(strip_tags(text), length: 150))
  end

  def user_thumb(user)
    asset_path('users/default-thumb.png')
  end
end
