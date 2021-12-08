class GamesController < ApplicationController
  before_action :set_current_game, only: [:destroy, :show, :make_guess]
  
  def index
    @games = Game.all
  end

  def show
    @guess = Guess.new
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to @game
    else
      render :new
    end
  end

  def make_guess
    @guess = @current_game.guesses.new(letter: params[:letter])

    if @guess.save
      redirect_to @current_game
    else
      render :show
    end
  end

  def destroy
    @current_game.destroy

    redirect_to root_path
  end


  # def check_guess(word, input)
  #   letters = word.chars
  #   positions = []
  #   letters.each_with_index do |letter, index| 
  #       if letter === input
  #           positions.push(index)
  #       end
  #   end

  #   return positions
  # end 


  # def give_strike

  # end

  private
    def set_current_game
      @current_game = Game.find(params[:id])
    end

    def game_params
      params.require(:game).permit(:word)
    end

end
