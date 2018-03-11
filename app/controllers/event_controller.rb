class EventController < ApplicationController
  def index
    @events = Event.all
  end
  
  def show
    @event = Event.find_by(id: params[:id])
  end
  
  def show_one_day
    @year = params[:date][0, 4].to_i
    @month = params[:date][4, 2].to_i
    @day = params[:date][6, 2].to_i
    @events = Event.where(year: @year, month: @month, day: @day)
  end
  
  def new
    @event = Event.new
  end
  
  def create
    
    @event =Event.new(
      place_prefecture: params[:place_prefecture],
      place_city: params[:place_city],
      place_station: params[:place_station],
      place_detail: params[:place_detail],
      year: params[:date][0, 4].to_i,
      month: params[:date][5, 2].to_i,
      day: params[:date][8, 2].to_i,
      time: params[:time],
      event_detail: params[:event_detail],
      artist_id: current_artist.id
      )
    @event.save
    redirect_to("/")
  end
  
  def edit
    @event = Event.find_by(id: params[:id])
  end
  
  def update
    @event = Event.find_by(id: params[:id])
    @event.place_prefecture = params[:place_prefecture],
    @event.place_city = params[:place_city],
    @event.place_station = params[:place_station],
    @event.place_detail = params[:place_detail],
    @event.year = params[:date][0, 4].to_i,
    @event.month = params[:date][5, 2].to_i,
    @event.day = params[:date][8, 2].to_i,
    @event.time = params[:time],
    @event.event_detail = params[:event_detail]
    @event.save
    redirect_to("/event")
  end
  
  def destroy
    @event = Event.find_by(id: params[:id])
    @event.destroy
    redirect_to("/event")
  end
    
  
  
end
