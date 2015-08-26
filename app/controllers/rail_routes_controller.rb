class RailRoutesController < ApplicationController
  # GET /rail_routes
  # GET /rail_routes.json
  def index
    @rail_routes = RailRoute.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rail_routes }
    end
  end

  # GET /rail_routes/1
  # GET /rail_routes/1.json
  def show
    @rail_route = RailRoute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rail_route }
    end
  end

  # GET /rail_routes/new
  # GET /rail_routes/new.json
  def new
    @rail_route = RailRoute.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rail_route }
    end
  end

  # GET /rail_routes/1/edit
  def edit
    @rail_route = RailRoute.find(params[:id])
  end

  # POST /rail_routes
  # POST /rail_routes.json
  def create
    @rail_route = RailRoute.new(params[:rail_route])
    #@stops = Stop.where(:id => params[:stopping_set])
    #@rail_route.stops << @stops

    respond_to do |format|
      if @rail_route.save
        format.html { redirect_to @rail_route, notice: 'Rail route was successfully created.' }
        format.json { render json: @rail_route, status: :created, location: @rail_route }
      else
        format.html { render action: "new" }
        format.json { render json: @rail_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rail_routes/1
  # PUT /rail_routes/1.json
  def update
    @rail_route = RailRoute.find(params[:id])
    @stops = Stop.where(:id => params[:stopping_set])
    @rail_route.stops.destroy_all
    @rail_route.stops << @stops

    respond_to do |format|
      if @rail_route.update_attributes(params[:rail_route])
        format.html { redirect_to @rail_route, notice: 'Rail route was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rail_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rail_routes/1
  # DELETE /rail_routes/1.json
  def destroy
    @rail_route = RailRoute.find(params[:id])
    @rail_route.destroy

    respond_to do |format|
      format.html { redirect_to rail_routes_url }
      format.json { head :no_content }
    end
  end
end
