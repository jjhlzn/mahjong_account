class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  # GET /games
  # GET /games.json
  def index
    @games = Game.all

    #加入一个{} block, 是为了效率。这样，当log_level大于debug的时候，不会去读取@games.count
    #少一次数据库的操作
    logger.debug { "games.count = #{@games.count}" }
  end

  # GET /games/1
  # GET /games/1.json
  def show
    @final_grade = Round.new
    @final_grade.player1Win = 0
    @final_grade.player2Win = 0
    @final_grade.player3Win = 0
    @final_grade.player4Win = 0
    if @game.rounds.length  > 0
      @final_grade.player1Win = @game.rounds.map { |round| round.player1Win }.reduce { |a, b| a + b }
      @final_grade.player2Win = @game.rounds.map { |round| round.player2Win }.reduce { |a, b| a + b }
      @final_grade.player3Win = @game.rounds.map { |round| round.player3Win }.reduce { |a, b| a + b }
      @final_grade.player4Win = @game.rounds.map { |round| round.player4Win }.reduce { |a, b| a + b }
    end
    p @final_grade
  end

  # GET /games/new
  def new
    @game = Game.new
    p @game
  end

  # GET /games/1/edit
  def edit
  end
  

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def account

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:player1, :player2, :player3, :player4, :chipCount, :price)
    end
end
