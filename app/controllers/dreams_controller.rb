class DreamsController < ApplicationController

  def index
    @dreams = Dream.all
  end

  def new
    @dream = Dream.new
  end

  def create
    dream = Dream.new(dream_params)
    dream.save
    redirect_to dreams_url, notice: '夢日記に登録しました。'
  end

  def show
    @dream = Dream.find(params[:id])
  end

  private

  def dream_params
    params.require(:dream).permit(:title, :description)
  end

end
