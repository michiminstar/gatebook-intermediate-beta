module UsersHelper
  def image_for(user, size = '52')
    if user.image
      image_tag "/user_images/#{user.image}", size: size, class: :profile_img
    else
      image_tag "/01.png", size: size, class: :profile_img
    end
  end
end
