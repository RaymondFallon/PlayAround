class PlaysController < ApplicationController
  before_action :set_play, only: [:show, :edit, :update, :destroy]

  # GET /plays
  # GET /plays.json
  def index
    @plays = Play.order("title")
  end

  # GET /plays/1
  # GET /plays/1.json
  def show
  end

  # GET /plays/new
  def new
    @play = Play.new
  end

  # GET /plays/1/edit
  def edit
  end

  def search
    @plays = []
    Play.find_each do |p|
      if p.title.downcase.include? params[:search_string].downcase 
        @plays.push(p)
      elsif p.playwright.downcase.include? params[:search_string].downcase 
        @plays.push(p)
      end
    end
  end

  def get_prods(play)
    @prods = []
    Production.find_each do |prod|
      if prod.play_id == play.id
        @prods.push(prod)
      end
    end
  end

  # POST /plays
  # POST /plays.json
  def create
    @play = Play.new(play_params)

    respond_to do |format|
      if @play.save
        format.html { redirect_to @play, notice: 'Play was successfully created.' }
        format.json { render :show, status: :created, location: @play }
      else
        format.html { render :new }
        format.json { render json: @play.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plays/1
  # PATCH/PUT /plays/1.json
  def update
    respond_to do |format|
      if @play.update(play_params)
        format.html { redirect_to @play, notice: 'Play was successfully updated.' }
        format.json { render :show, status: :ok, location: @play }
      else
        format.html { render :edit }
        format.json { render json: @play.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plays/1
  # DELETE /plays/1.json
  def destroy
    @play.destroy
    respond_to do |format|
      format.html { redirect_to plays_url, notice: 'Play was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_play
      @play = Play.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def play_params
      params.require(:play).permit(:title, :playwright, :year_of_release, :male_roles, :female_roles, :total_roles, :musical, :comedy)
    end
end
