class EventsController < ApplicationController

    def index
        @events = Event.all.order(created_at: :desc)
    end

    def show
        @event = Events.find(params[:id])
        @attendances = @event.attendances.order(created_at: :desc) #the record of the user's attendance.  
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.create(event_params)
        redirect_to event_path(@event)
    end

    def edit
        @event = Event.find(params[:id])
    end

    def update
        @event = Event.find(params[:id])
        @event.update(event_params)

        redirect_to event_path(@event)
    end

    private
    def event_params
        params.require(:events).permit(:title, :date_of_event, :location, :description, :user_id)
    end

end
