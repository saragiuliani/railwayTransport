class RailroutesStopsController < ApplicationController
  # GET /railroutes_stops
  # GET /railroutes_stops.json
  def index
    @railroutes_stops = RailroutesStop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @railroutes_stops }
    end
  end

  # GET /railroutes_stops/1
  # GET /railroutes_stops/1.json
  def show
    @railroutes_stop = RailroutesStop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @railroutes_stop }
    end
  end

  # GET /railroutes_stops/new
  # GET /railroutes_stops/new.json
  def new
    @railroutes_stop = RailroutesStop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @railroutes_stop }
    end
  end

  # GET /railroutes_stops/1/edit
  def edit
    @railroutes_stop = RailroutesStop.find(params[:id])
  end

  # POST /railroutes_stops
  # POST /railroutes_stops.json
  def create
    @railroutes_stop = RailroutesStop.new(params[:railroutes_stop])
    @rail_route = RailRoute.find(@railroutes_stop.railroute_id)
  


    respond_to do |format|
      if @railroutes_stop.save
        format.html { redirect_to @railroutes_stop, notice: 'Railroutes stop was successfully created.' }
        format.json { render json: @railroutes_stop, status: :created, location: @railroutes_stop }
      else
        format.html { render action: "new" }
        format.json { render json: @railroutes_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /railroutes_stops/1
  # PUT /railroutes_stops/1.json
  def update
    @railroutes_stop = RailroutesStop.find(params[:id])

    respond_to do |format|
      if @railroutes_stop.update_attributes(params[:railroutes_stop])
        format.html { redirect_to @railroutes_stop, notice: 'Railroutes stop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @railroutes_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /railroutes_stops/1
  # DELETE /railroutes_stops/1.json
  def destroy
    @railroutes_stop = RailroutesStop.find(params[:id])
    @railroutes_stop.destroy

    respond_to do |format|
      format.html { redirect_to railroutes_stops_url }
      format.json { head :no_content }
    end
  end
end
