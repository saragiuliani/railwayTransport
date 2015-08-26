class TrsController < ApplicationController
  # GET /trs
  # GET /trs.json
  def index
    @trs = Tr.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trs }
    end
  end

  # GET /trs/1
  # GET /trs/1.json
  def show
    @tr = Tr.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tr }
    end
  end

  # GET /trs/new
  # GET /trs/new.json
  def new
    @tr = Tr.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tr }
    end
  end

  # GET /trs/1/edit
  def edit
    @tr = Tr.find(params[:id])
  end

  # POST /trs
  # POST /trs.json
  def create
    @tr = Tr.new(params[:tr])
    @tr.railroute_departure = @railroute.departure
    @tr.railroute_destination = @railroute.destination
    @tr.railroute_dtime = @railroute.d_time
    @tr.train = @train.serial_number

    respond_to do |format|
      if @tr.save
        format.html { redirect_to @tr, notice: 'Tr was successfully created.' }
        format.json { render json: @tr, status: :created, location: @tr }
      else
        format.html { render action: "new" }
        format.json { render json: @tr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trs/1
  # PUT /trs/1.json
  def update
    @tr = Tr.find(params[:id])

    respond_to do |format|
      if @tr.update_attributes(params[:tr])
        format.html { redirect_to @tr, notice: 'Tr was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trs/1
  # DELETE /trs/1.json
  def destroy
    @tr = Tr.find(params[:id])
    @tr.destroy

    respond_to do |format|
      format.html { redirect_to trs_url }
      format.json { head :no_content }
    end
  end
end
