class FlightsController < ApplicationController
  def index
    @flights = Flight.all
  end

  def show
    @flights = Flight.find(params[:id])
  end

  def search
    @flights = Flight.where(origin: params[:origin], destination: params[:destination])
    .where('departure >= ?', params[:departure_date])
    render :index
  end
end
