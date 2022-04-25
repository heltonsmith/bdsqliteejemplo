class Producto3sController < ApplicationController
  before_action :set_producto3, only: %i[ show edit update destroy ]

  # GET /producto3s or /producto3s.json
  def index
    @producto3s = Producto3.all
  end

  # GET /producto3s/1 or /producto3s/1.json
  def show
  end

  # GET /producto3s/new
  def new
    @producto3 = Producto3.new
  end

  # GET /producto3s/1/edit
  def edit
  end

  # POST /producto3s or /producto3s.json
  def create
    @producto3 = Producto3.new(producto3_params)

    respond_to do |format|
      if @producto3.save
        format.html { redirect_to producto3_url(@producto3), notice: "Producto creado correctamente" }
        format.json { render :show, status: :created, location: @producto3 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @producto3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto3s/1 or /producto3s/1.json
  def update
    respond_to do |format|
      if @producto3.update(producto3_params)
        format.html { redirect_to producto3_url(@producto3), notice: "Producto actualizado correctamente" }
        format.json { render :show, status: :ok, location: @producto3 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @producto3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto3s/1 or /producto3s/1.json
  def destroy
    @producto3.destroy

    respond_to do |format|
      format.html { redirect_to producto3s_url, notice: "Producto borrado correctamente" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto3
      @producto3 = Producto3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def producto3_params
      params.require(:producto3).permit(:nombre, :descripcion, :precio)
    end
end
