class InstanciaController < ApplicationController
  # GET /instancia
  # GET /instancia.json
  def index
    @instancia = Instancium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instancia }
    end
  end

  # GET /instancia/1
  # GET /instancia/1.json
  def show
    @instancium = Instancium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instancium }
    end
  end

  # GET /instancia/new
  # GET /instancia/new.json
  def new
    @instancium = Instancium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instancium }
    end
  end

  # GET /instancia/1/edit
  def edit
    @instancium = Instancium.find(params[:id])
  end

  # POST /instancia
  # POST /instancia.json
  def create
    @instancium = Instancium.new(params[:instancium])

    respond_to do |format|
      if @instancium.save
        format.html { redirect_to @instancium, notice: 'Instancium was successfully created.' }
        format.json { render json: @instancium, status: :created, location: @instancium }
      else
        format.html { render action: "new" }
        format.json { render json: @instancium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instancia/1
  # PUT /instancia/1.json
  def update
    @instancium = Instancium.find(params[:id])

    respond_to do |format|
      if @instancium.update_attributes(params[:instancium])
        format.html { redirect_to @instancium, notice: 'Instancium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instancium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instancia/1
  # DELETE /instancia/1.json
  def destroy
    @instancium = Instancium.find(params[:id])
    @instancium.destroy

    respond_to do |format|
      format.html { redirect_to instancia_url }
      format.json { head :no_content }
    end
  end
end
