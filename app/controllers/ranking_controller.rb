class RankingController < ApplicationController
  def have
    @haves = Ownership.where(type: "Have").group("item_id").order('count_all desc').count
    @haves = @haves.take(10)
  end

  def want
    @wants = Ownership.where(type: "Want").group("item_id").order('count_all desc').count
    @wants = @wants.take(10)
  end
end
