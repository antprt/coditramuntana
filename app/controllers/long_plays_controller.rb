class LongPlaysController < ApplicationController
  before_action :load_long_play, only: [:show, :edit, :update, :destroy]

  # GET /long_plays
  def index
    @long_plays = LongPlay.all.includes(:artist)
  end

  # GET /long_plays/1
  def show
  end

  # GET /long_plays/new
  def new
    @long_play = LongPlay.new
  end

  # GET /long_plays/1/edit
  def edit
  end

  # POST /long_plays
  def create
    @long_play = LongPlay.new(long_play_params)

    respond_to do |format|
      if @long_play.save
        format.html { redirect_to @long_play, notice: 'Long play was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /long_plays/1
  def update
    respond_to do |format|
      if @long_play.update(long_play_params)
        format.html { redirect_to @long_play, notice: 'Long play was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /long_plays/1
  def destroy
    @id = @long_play.id
    @long_play.destroy
    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def load_long_play
      @long_play = LongPlay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def long_play_params
      params.require(:long_play).permit(:name, :description, :artist_id)
    end
end
