class RbsController < ApplicationController
  # GET /rbs
  # GET /rbs.json
  def index
    @rbs = Rb.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rbs }
    end
  end

  # GET /rbs/1
  # GET /rbs/1.json
  def show
    @rb = Rb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rb }
    end
  end

  # GET /rbs/new
  # GET /rbs/new.json
  def new
    @rb = Rb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rb }
    end
  end

  # GET /rbs/1/edit
  def edit
    @rb = Rb.find(params[:id])
  end

  # POST /rbs
  # POST /rbs.json
  def create
    @rb = Rb.new(params[:rb])

    respond_to do |format|
      if @rb.save
        format.html { redirect_to @rb, notice: 'Rb was successfully created.' }
        format.json { render json: @rb, status: :created, location: @rb }
      else
        format.html { render action: "new" }
        format.json { render json: @rb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rbs/1
  # PUT /rbs/1.json
  def update
    @rb = Rb.find(params[:id])

    respond_to do |format|
      if @rb.update_attributes(params[:rb])
        format.html { redirect_to @rb, notice: 'Rb was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rbs/1
  # DELETE /rbs/1.json
  def destroy
    @rb = Rb.find(params[:id])
    @rb.destroy

    respond_to do |format|
      format.html { redirect_to rbs_url }
      format.json { head :no_content }
    end
  end
end
