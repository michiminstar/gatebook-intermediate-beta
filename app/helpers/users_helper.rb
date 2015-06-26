module UsersHelper
  def image_for(user, size = '52')
    if user.image
      image_tag "/user_images/#{user.image}", size: size, class: :gravatar
    else
      image_tag "/01.png", size: size, class: :gravatar
    end
  end
end
