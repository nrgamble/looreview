class LoosController < ApplicationController

  def index
    @loos = Loo.all
  end

  def show
    @loo = Loo.find(params[:id])
  end

end
