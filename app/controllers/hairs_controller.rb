class HairsController < ApplicationController
  # GET /hairs
  # GET /hairs.json
  def index
    @hairs = Hair.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hairs }
    end
  end

  # GET /hairs/1
  # GET /hairs/1.json
  def show
    @hair = Hair.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hair }
    end
  end

  # GET /hairs/new
  # GET /hairs/new.json
  def new
    @hair = Hair.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hair }
    end
  end

  # GET /hairs/1/edit
  def edit
    @hair = Hair.find(params[:id])
  end

  # POST /hairs
  # POST /hairs.json
  def create
    @hair = Hair.new(params[:hair])

    respond_to do |format|
      if @hair.save
        format.html { redirect_to @hair, notice: 'Hair was successfully created.' }
        format.json { render json: @hair, status: :created, location: @hair }
      else
        format.html { render action: "new" }
        format.json { render json: @hair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hairs/1
  # PUT /hairs/1.json
  def update
    @hair = Hair.find(params[:id])

    respond_to do |format|
      if @hair.update_attributes(params[:hair])
        format.html { redirect_to @hair, notice: 'Hair was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hairs/1
  # DELETE /hairs/1.json
  def destroy
    @hair = Hair.find(params[:id])
    @hair.destroy

    respond_to do |format|
      format.html { redirect_to hairs_url }
      format.json { head :no_content }
    end
  end
end
