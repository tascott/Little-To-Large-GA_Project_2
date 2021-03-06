class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  # GET /events
  # GET /events.json
  def index
    @events = Event.all

    user = current_user

    if current_user && current_user.admin?  
      render 'index'
    else
      redirect_to root_path
    end

   end





  # GET /events/1
  # GET /events/1.json
  def show
    @comment = Comment.new

    @event = Event.find(params[:id])

    if (@event.user == current_user) || current_user.admin?  
      render 'show'
    else
      redirect_to root_path
    end

    
    @comment = Comment.new
    @comment.event = @event

  end




  
  def iCal
   
     @event = Event.find(params[:id])
     
     cal = Icalendar::Calendar.new
     cal.event do |e|
       e.dtstart     = Icalendar::Values::Date.new(@event.date)
       e.summary     = "#{@event.name} #{@event.body}"
       e.ip_class    = "PRIVATE"
     end

    cal.publish
    render text: cal.to_ical, content_type: 'text/calendar'
     
  end




  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @event.user = current_user
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :location, :body, :image, :date, :user_id)
    end
end
