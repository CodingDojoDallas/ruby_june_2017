class EventsController < ApplicationController
  before_action :user_authorized, only: [:index]

  def index
    @current_user = current_user
    @states = State.all
    @local_events = Event.where(state: @current_user.state)
    @other_events = Event.where.not(state: @current_user.state)

    # render "index.html.erb"
  end

  def create
    event = Event.create(event_params.merge(state: State.find(event_params[:state]), user: current_user))

    unless event.valid?
      flash[:errors] = event.errors.full_messages
    end
    redirect_to "/events"
  end

  def join
    event_attendee = EventAttendee.create(user: current_user, event: Event.find(params[:event_id]))

    redirect_to "/events"
  end

  private
    def event_params
      params.require(:event).permit(:name, :date, :location, :state)
    end
end
