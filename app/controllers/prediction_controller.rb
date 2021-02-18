class PredictionController < ApplicationController
    def index 
        Prediction.all
    end

    def show
        data = Prediction.select(:message, :sign).where(date: Date.parse(params[:date]))
        render :json => data
    end
end