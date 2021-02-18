class PredictionController < ApplicationController
    def index 
        Prediction.all
    end

    def cors_set_access_control_headers
        headers['Access-Control-Allow-Origin'] = '*'
        headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
        headers['Access-Control-Request-Method'] = '*'
        headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
    end

    def show
        cors_set_access_control_headers
        data = Prediction.select(:message, :sign).where(date: Date.parse(params[:date]))
        render :json => data
    end
end