class PerfumnsController < ApplicationController
  def index
    @perfumns = Perfumn.all
  end

  def show
    @perfumn = Perfumn.find(params[:id])
  end

  # NEW E CREATE
  def new
    @perfumn = Perfumn.new
  end

  def create
    @perfumn = Perfumn.new(perfumns_params)
    return redirect_to perfumn_path(@perfumn) if @perfumn.save

    render new_perfumn_path
  end

  def edit
    @perfumn = Perfumn.find(params[:id])
  end

  def update
    @perfumn = Perfumn.find(params[:id])

    return redirect_to perfumn_path(@perfumn) if @perfumn.update(perfumns_params)

    render :edit
  end

  def destroy
    @perfumn = Perfumn.find(params[:id])
    if @perfumn.destroy
      redirect_to perfumns_path
    else
      redirect_to new_perfumn_path
    end
  end

  private

  def perfumns_params
    params.require(:perfumn).permit(:description, :price, :quality, :review, :url_image)
  end
end
