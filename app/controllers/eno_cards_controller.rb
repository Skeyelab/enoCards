class EnoCardsController < ApplicationController
  before_action :set_eno_card, only: [:show, :edit, :update, :destroy]
  # GET /eno_cards
  # GET /eno_cards.json
  def index
    @eno_cards = EnoCard.order(:text).all
  end

  # GET /eno_cards/1
  # GET /eno_cards/1.json
  def show

  end

  def verify
    @eno_cards = EnoCard.order(impressions_count: :desc).where('impressions_count > 0')
    #binding.pry
  end


  def counts
    @eno_cards = EnoCard.order(impressions_count: :desc, text: :asc).where('impressions_count > 0')
    #binding.pry
  end

  def show_random
    @eno_card = EnoCard.where(impressions_count: EnoCard.order(impressions_count: :asc).first.impressions_count).sort_by{rand}.slice(0,1).first
    impressionist(@eno_card)
  end

  # GET /eno_cards/new
  def new
    @eno_card = EnoCard.new
  end

  # GET /eno_cards/1/edit
  def edit
  end

  # POST /eno_cards
  # POST /eno_cards.json
  def create
    @eno_card = EnoCard.new(eno_card_params)

    respond_to do |format|
      if @eno_card.save
        format.html { redirect_to @eno_card, notice: 'Eno card was successfully created.' }
        format.json { render :show, status: :created, location: @eno_card }
      else
        format.html { render :new }
        format.json { render json: @eno_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eno_cards/1
  # PATCH/PUT /eno_cards/1.json
  def update
    respond_to do |format|
      if @eno_card.update(eno_card_params)
        format.html { redirect_to @eno_card, notice: 'Eno card was successfully updated.' }
        format.json { render :show, status: :ok, location: @eno_card }
      else
        format.html { render :edit }
        format.json { render json: @eno_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eno_cards/1
  # DELETE /eno_cards/1.json
  def destroy
    @eno_card.destroy
    respond_to do |format|
      format.html { redirect_to eno_cards_url, notice: 'Eno card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_eno_card
    @eno_card = EnoCard.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def eno_card_params
    params.require(:eno_card).permit(:text)
  end
end
