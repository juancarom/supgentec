class CursosController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  # GET /cursos
  # GET /cursos.json
  def index

    if current_user.role? :organizacion then
      @cursos = current_user.cursos
    else 
      @cursos = Curso.all
    end

    #if params["buscarCurso"] then
     # if params["buscarCurso"] == "" then
      #  @cursos = Curso.all
      ## @cursos = Curso.where(['organizacion_id LIKE ?', "%"+params["buscarCurso"]+"%"])
      #end
    #else      
     # @cursos = Curso.all
    #end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cursos }
    end
  end

  # GET /cursos/1
  # GET /cursos/1.json
  def show
    @curso = Curso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @curso }
    end
  end

  # GET /cursos/new
  # GET /cursos/new.json
  def new
    @curso = Curso.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @curso }
    end
  end

  # GET /cursos/1/edit
  def edit
    @curso = Curso.find(params[:id])
  end

  # POST /cursos
  # POST /cursos.json
  def create
    @curso = Curso.new(params[:curso])

    if current_user.role? :organizacion then
      @curso.organizacion_id = current_user.organizacion.id
    end

    respond_to do |format|
      if @curso.save
        @curso.instancias.each do |i| 
          i.calcularPorcentajeAdeudan
          i.calcularPorcentajeAdeudanMasDeTres
          i.calcularPorcentajeAdeudanMenosDeTres
        end
        format.html { redirect_to @curso, notice: 'Curso was successfully created.' }
        format.json { render json: @curso, status: :created, location: @curso }
      else
        format.html { render action: "new" }
        format.json { render json: @curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cursos/1
  # PUT /cursos/1.json
  def update
    @curso = Curso.find(params[:id])

    respond_to do |format|
      if @curso.update_attributes(params[:curso])
        @curso.instancias.each do |i| 
          i.calcularPorcentajeAdeudan
          i.calcularPorcentajeAdeudanMasDeTres
          i.calcularPorcentajeAdeudanMenosDeTres
        end
        format.html { redirect_to @curso, notice: 'Curso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cursos/1
  # DELETE /cursos/1.json
  def destroy
    @curso = Curso.find(params[:id])
    @curso.destroy

    respond_to do |format|
      format.html { redirect_to cursos_url }
      format.json { head :no_content }
    end
  end
end
