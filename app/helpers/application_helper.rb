require 'cart_helper.rb'

module ApplicationHelper
  include CartHelper


# ①ルート画面でカートに商品があるか否かで場合分けをする。ある場合は「ショッピングカートを見る」、そうでなければ「商品がありません」

  # def productInto
  #   if true
  #     "ショッピングカートを見る"
  #   else
  #     "商品がありません"
  # end

# ②商品詳細で「予約する」のみか否かで場合分け。「予約する」のみの場合はお届け予定日が「指定なし」のみになる。そうでなければ3パターンから選べる。

# def register
#   if (products.release_date > Date.today) then
#     「指定なし」のパターン
#   else
#     ３パターンから選択
# end

end
