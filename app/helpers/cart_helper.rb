module CartHelper

  def cart_links_partial_path
    if user_signed_in?
      'layouts/cart/cart_in/cart_in_product'
    else
      'layouts/cart/cart_in/cart_not_in_product'
    end
  end

end
