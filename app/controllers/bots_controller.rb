class BotsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
    @bot = Bot.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
  end
end
