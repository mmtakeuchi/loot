class StocksController < ApplicationController
    before_action :authenticate_user!

    def index
        @stocks = Stock.all
        
    end

    def new
        @stock = Stock.new
    end

    def create
        @stock = Stock.new(name: params[:name], ticker: params[:ticker], price: params[:price])
        @stock.save 
        redirect_to stocks_path

        # if @stock.save
        #     redirect_to stocks_path
        # else
        #     render :new
        # end
    end

    private

    def stock_params
        params.require(:stock).permits(:name, :ticker, :cost, :shares, :price, :market_cap, :volume, :avg_volume, :pe_ratio, :open, :previouse_close, :dollar_change, :percent_change, :ytd_change, :high, :low, :week_52_high, :week_52_low)
    end
end
