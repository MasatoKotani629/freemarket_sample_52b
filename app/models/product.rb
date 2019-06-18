class Product < ApplicationRecord
  has_many :images
  enum status: { "---" => 0, "新品、未使用" => 1, "未使用に近い" => 2, "目立った傷や汚れなし" => 3, "目立った傷や汚れなし" => 4, "やや傷や汚れあり" => 5, "傷や汚れあり" => 6, "全体的に状態が悪い" => 7}
  enum obligation_fee: { "--- " => 0, "送料込み(出品者負担)" => 1, "着払い(購入者負担)" => 2}
  enum deliverytime: { "---  " => 0, "1~2日で発送" => 1, "2~3日で発送" => 2, "4~7日で発送" => 3}
end
