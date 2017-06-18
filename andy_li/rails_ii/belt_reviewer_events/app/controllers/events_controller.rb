class EventsController < ApplicationController
  before_action :user_authorized, only: [:index, :show, :edit]

  def index
    @current_user = current_user
    @states = State.all
    @local_events = Event.where(state: @current_user.state)
    @other_events = Event.where.not(state: @current_user.state)
    @events_attended_ids = @current_user.events_attended_ids

    # render "index.html.erb"
  end

  def create
    event = Event.create(event_params.merge(state: State.find(event_params[:state]), user: current_user))

    unless event.valid?
      flash[:msgs] = event.errors.full_messages
    end

    redirect_to "/events"
  end

  def show
    @event = Event.find(params[:event_id])
    @comments = Comment.where(event: @event).includes(:user)
    # render "show.html.erb"
  end

  def edit
    @event = Event.find(params[:event_id])
    @states = State.all
    # render "edit.html.erb"
  end

  def update
    event = Event.update(params[:event_id], event_params.merge(state: State.find(event_params[:state])))

    if event.valid?
      flash[:msgs] = ["#{event_params[:name]} was successfully updated..."]
      redirect_to "/events"
    else
      flash[:msgs] = event.errors.full_messages
      redirect_to "/events/#{event.id}"
    end
  end

  def destroy
    Event.destroy(params[:event_id])
    redirect_to "/events"
  end

  def join
    event_attendee = EventAttendee.create(user: current_user, event: Event.find(params[:event_id]))
    redirect_to "/events"
  end

  def cancel
    EventAttendee.find_by(user: current_user, event: Event.find(params[:event_id])).destroy
    redirect_to "/events"
  end


  private
    def event_params
      params.require(:event).permit(:name, :date, :location, :state)
    end
end
