class SentencesController < ApplicationController
  before_filter :load_board, except: :index

  def index
    @board = Board.first_or_create
  end

  def create
    sentence = @board.sentences.create params.require(:sentence).permit!
    render partial: 'item', locals: {sentence: sentence}
  end

  def update
    sentence = @board.sentences.find params[:id]
    sentence.update_attributes params.require(:sentence).permit(:content)
    render partial: 'item', locals: {sentence: sentence}
  end

  private

  def load_board
    @board = Board.find params[:board_id]
  end
end
