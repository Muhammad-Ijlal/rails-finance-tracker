class StocksController < ApplicationController
  def search
    respond_to do |format|    
      if params[:stock].present?
        @stock = Stock.new_lookup(params[:stock])
        if !@stock
          flash.now[:alert] = "Please enter a valid symbol to search"
        end
      else
        flash.now[:alert] = "Please enter a symbol to search"
      end
      format.turbo_stream { render turbo_stream: turbo_stream.update('results', partial: 'users/results') }
    end
  end
end
