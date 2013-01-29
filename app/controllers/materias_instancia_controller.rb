class MateriasInstanciaController < ApplicationController
  # GET /materias_instancia
  # GET /materias_instancia.json
  def index
    @materias_instancia = MateriasInstancium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @materias_instancia }
    end
  end

  # GET /materias_instancia/1
  # GET /materias_instancia/1.json
  def show
    @materias_instancium = MateriasInstancium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @materias_instancium }
    end
  end

  # GET /materias_instancia/new
  # GET /materias_instancia/new.json
  def new
    @materias_instancium = MateriasInstancium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @materias_instancium }
    end
  end

  # GET /materias_instancia/1/edit
  def edit
    @materias_instancium = MateriasInstancium.find(params[:id])
  end

  # POST /materias_instancia
  # POST /materias_instancia.json
  def create
    @materias_instancium = MateriasInstancium.new(params[:materias_instancium])

    respond_to do |format|
      if @materias_instancium.save
        format.html { redirect_to @materias_instancium, notice: 'Materias instancium was successfully created.' }
        format.json { render json: @materias_instancium, status: :created, location: @materias_instancium }
      else
        format.html { render action: "new" }
        format.json { render json: @materias_instancium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /materias_instancia/1
  # PUT /materias_instancia/1.json
  def update
    @materias_instancium = MateriasInstancium.find(params[:id])

    respond_to do |format|
      if @materias_instancium.update_attributes(params[:materias_instancium])
        format.html { redirect_to @materias_instancium, notice: 'Materias instancium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @materias_instancium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materias_instancia/1
  # DELETE /materias_instancia/1.json
  def destroy
    @materias_instancium = MateriasInstancium.find(params[:id])
    @materias_instancium.destroy

    respond_to do |format|
      format.html { redirect_to materias_instancia_url }
      format.json { head :no_content }
    end
  end
end
