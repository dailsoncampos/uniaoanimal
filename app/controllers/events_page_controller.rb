class EventsPageController < ApplicationController
  def index
    @events = Event.all.order(date: :desc)
  end

  # def show
  #   @event = Event.find_by(id: params[:id])
  # end
end
