class CardController < ApplicationController

  def show_random
    @card = EnoCard.all.sort_by{rand}.slice(0,1).first
    impressionist(@card)
  end
end
