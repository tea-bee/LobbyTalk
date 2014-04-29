module UsersHelper
	# 与えられたユーザーのGravatar (http://gravatar.com/) を返す。
	# つまりユーザーの登録した画像を受け取る。
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.e_mail.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.account, class: "gravatar")
  end
end
