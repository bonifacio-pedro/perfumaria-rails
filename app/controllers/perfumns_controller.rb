class PerfumnsController < ApplicationController
  def index
    @perfumns = Perfumn.all
  end
  def show
    @perfumn = Perfumn.find(params[:id])
  end

  # NEW E CREATE
  def new # Me leva ao form -> do a opção de utilizar formulário separado
    @perfumn = Perfumn.new
  end
  def create # Rota post
    @perfumn = Perfumn.new(perfumns_params)
    return redirect_to perfumn_path(@perfumn) if @perfumn.save

    render new_perfumn_path
  end

  def edit # Formulário de edição
    @perfumn = Perfumn.find(params[:id])
  end
  def update
    @perfumn = Perfumn.find(params[:id])

    # Código limpo
    return redirect_to perfumn_path(@perfumn) if @perfumn.update(perfumns_params)

    #else
    render :edit
  end

  def destroy
    @perfumn = Perfumn.find(params[:id])
    @perfumn.destroy
    redirect_to perfumn_path
  end

  private
  def perfumns_params
    params.require(:perfumn).permit(:description, :price, :quality, :review, :url_image)
  end
end
