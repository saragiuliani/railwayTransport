class RailroutesTrainsController < ApplicationController
  # GET /railroutes_trains
  # GET /railroutes_trains.json
  def index
    @railroutes_trains = RailroutesTrain.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @railroutes_trains }
    end
  end

  # GET /railroutes_trains/1
  # GET /railroutes_trains/1.json
  def show
    @railroutes_train = RailroutesTrain.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @railroutes_train }
    end
  end

  # GET /railroutes_trains/new
  # GET /railroutes_trains/new.json
  def new
    @railroutes_train = RailroutesTrain.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @railroutes_train }
    end
  end

  # GET /railroutes_trains/1/edit
  def edit
    @railroutes_train = RailroutesTrain.find(params[:id])
  end

  # POST /railroutes_trains
  # POST /railroutes_trains.json
  def create
    #@rail_route = RailRoute.find()
    @railroutes_train = RailroutesTrain.new(params[:railroutes_train])
    #@railroutes_train.railroute_id = @rail_route.id
    #@railroutes_train.train_id = @train.id

    respond_to do |format|
      if @railroutes_train.save
        format.html { redirect_to @railroutes_train, notice: 'Railroutes train was successfully created.' }
        format.json { render json: @railroutes_train, status: :created, location: @railroutes_train }
      else
        format.html { render action: "new" }
        format.json { render json: @railroutes_train.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /railroutes_trains/1
  # PUT /railroutes_trains/1.json
  def update
    @railroutes_train = RailroutesTrain.find(params[:id])

    respond_to do |format|
      if @railroutes_train.update_attributes(params[:railroutes_train])
        format.html { redirect_to @railroutes_train, notice: 'Railroutes train was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @railroutes_train.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /railroutes_trains/1
  # DELETE /railroutes_trains/1.json
  def destroy
    @railroutes_train = RailroutesTrain.find(params[:id])
    @railroutes_train.destroy

    respond_to do |format|
      format.html { redirect_to railroutes_trains_url }
      format.json { head :no_content }
    end
  end
end
