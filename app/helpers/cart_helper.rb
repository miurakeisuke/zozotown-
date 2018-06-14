module CartHelper

  def cart_links_partial_path
    if (false)
      'layouts/cart/cart_in/cart_in_product'
    else
      'layouts/cart/cart_in/cart_not_in_product'
    end
  end

end
