class StocksController < ApplicationController

  def search

    if params[:stock].blank?
      flash.now[:danger] = "empty symbol"
    else
      @stock = Stock.new_from_lookup(params[:stock])
      flash.now[:danger] = "wrong symbol" unless @stock
      # render json: @stock
    end
    respond_to do |format|
      format.html {redirect_to my_portfolio_url, notice: 'deleted'}
      format.js {render partial: 'users/result'}
    end

  end


end
