class RankingController < ApplicationController
  
def have
  @ranking = Have.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
  ids = @ranking.keys  #Keysメソッド…ハッシュのキーを集めて配列にして返す。
  @items = Item.find(ids).sort_by{|i| ids.index(i.id)}
end

def want
  @ranking = Want.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
  ids = @ranking.keys
  @items = Item.find(ids).sort_by{|i| ids.index(i.id)}
end

end