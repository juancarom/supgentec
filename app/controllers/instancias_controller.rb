class InstanciasController < ApplicationController
  # GET /instancias
  # GET /instancias.json
  def index
    @instancias = Instancia.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instancias }
    end
  end

  # GET /instancias/1
  # GET /instancias/1.json
  def show
    @instancia = Instancia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instancia }
    end
  end

  # GET /instancias/new
  # GET /instancias/new.json
  def new
    @instancia = Instancia.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instancia }
    end
  end

  # GET /instancias/1/edit
  def edit
    @instancia = Instancia.find(params[:id])
  end

  # POST /instancias
  # POST /instancias.json
  def create
    @instancia = Instancia.new(params[:instancia])

    respond_to do |format|
      if @instancia.save
        format.html { redirect_to @instancia, notice: 'Instancia was successfully created.' }
        format.json { render json: @instancia, status: :created, location: @instancia }
      else
        format.html { render action: "new" }
        format.json { render json: @instancia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instancias/1
  # PUT /instancias/1.json
  def update
    @instancia = Instancia.find(params[:id])

    respond_to do |format|
      if @instancia.update_attributes(params[:instancia])
        format.html { redirect_to @instancia, notice: 'Instancia was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instancia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instancias/1
  # DELETE /instancias/1.json
  def destroy
    @instancia = Instancia.find(params[:id])
    @instancia.destroy

    respond_to do |format|
      format.html { redirect_to instancias_url }
      format.json { head :no_content }
    end
  end
end
