module CartHelper


  # def cart_links_partial_path
  #   a = [1,2,3,4,5]
  #   b = a.sample(1)[0]
  #   console = ActiveSupport::Logger.new(STDOUT)
  #   logger.debug b
  #   if b > 2
  #     logger.debug 'カートあり'
  #     return 'layouts/cart/cart_in/cart_in_links'
  #   else
  #     logger.debug 'カートなし'
  #     return 'layouts/cart/cart_in/not_cart_in_links'
  #   end
  # end

  def cart_links_partial_path
# 仮でunlessを入れてます、本当はif。
    unless user_signed_in? && current_user.cart == Cart.user_id
      return 'layouts/cart/cart_in/cart_in_links'
    else
      return 'layouts/cart/cart_in/not_cart_in_links'
    end
  end

end
