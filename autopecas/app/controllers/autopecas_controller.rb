class AutopecasController < ApplicationController
  before_action :set_autopeca, only: [:show, :edit, :update, :destroy, :selling]
  respond_to :html, :js

  # GET /autopecas
  # GET /autopecas.json
  def index
    if params[:pesquisar]
      @autopecas = Autopeca.pesquisar(params[:pesquisar])
    else
        # or, use an explicit "per page" limit:
        #@autopecas = Autopeca.all.paginate(:page => params[:page], :per_page => 10)
      @autopecas = Autopeca.all.paginate(:page => params[:page])
    end
  end

  # GET /autopecas/1
  # GET /autopecas/1.json
  def show
  end

  # GET /autopecas/new
  def new
    @autopeca = Autopeca.new
  end

  # GET /autopecas/1/edit
  def edit
  end

  # POST /autopecas
  # POST /autopecas.json
  def create
    @autopeca = Autopeca.new(autopeca_params)

    respond_to do |format|
      if @autopeca.save
        format.html { redirect_to @autopeca, notice: 'Produto cadastrado com sucesso.' }
        format.json { render :show, status: :created, location: @autopeca }
        format.js # views/autopecas/create.js.erb
      else
        format.html { render :new }
        format.json { render json: @autopeca.errors, status: :unprocessable_entity }
        #format.js
      end
    end
  end

  # PATCH/PUT /autopecas/1
  # PATCH/PUT /autopecas/1.json
  def update
    respond_to do |format|
      if @autopeca.update(autopeca_params)
        format.html { redirect_to @autopeca, notice: 'Produto atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @autopeca }
      else
        format.html { render :edit }
        format.json { render json: @autopeca.errors, status: :unprocessable_entity }
      end
    end
  end

  def selling
    respond_to do |format|
        format.js
    end
  end

  # DELETE /autopecas/1
  # DELETE /autopecas/1.json
  def destroy
    @autopeca.destroy
    respond_to do |format|
      format.html { redirect_to autopecas_url, notice: 'Produto deletado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autopeca
      @autopeca = Autopeca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def autopeca_params
      params.require(:autopeca).permit(:nome, :num_fabrica, :montadora, :aplicacao, :valor_compra, :valor_venda, :codigo_peca, :estoque, :grupo, :info, :pratileira)
    end
end
