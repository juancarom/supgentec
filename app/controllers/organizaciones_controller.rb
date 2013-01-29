class OrganizacionesController < ApplicationController
  # GET /organizaciones
  # GET /organizaciones.json
  def index
    @organizaciones = Organizacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @organizaciones }
    end
  end

  # GET /organizaciones/1
  # GET /organizaciones/1.json
  def show
    @organizacion = Organizacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @organizacion }
    end
  end

  # GET /organizaciones/new
  # GET /organizaciones/new.json
  def new
    @organizacion = Organizacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @organizacion }
    end
  end

  # GET /organizaciones/1/edit
  def edit
    @organizacion = Organizacion.find(params[:id])
  end

  # POST /organizaciones
  # POST /organizaciones.json
  def create
    @organizacion = Organizacion.new(params[:organizacion])

    respond_to do |format|
      if @organizacion.save
        format.html { redirect_to @organizacion, notice: 'Organizacion was successfully created.' }
        format.json { render json: @organizacion, status: :created, location: @organizacion }
      else
        format.html { render action: "new" }
        format.json { render json: @organizacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /organizaciones/1
  # PUT /organizaciones/1.json
  def update
    @organizacion = Organizacion.find(params[:id])

    respond_to do |format|
      if @organizacion.update_attributes(params[:organizacion])
        format.html { redirect_to @organizacion, notice: 'Organizacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @organizacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizaciones/1
  # DELETE /organizaciones/1.json
  def destroy
    @organizacion = Organizacion.find(params[:id])
    @organizacion.destroy

    respond_to do |format|
      format.html { redirect_to organizaciones_url }
      format.json { head :no_content }
    end
  end
end
