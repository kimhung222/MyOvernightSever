class FillingsController < ApplicationController
 def new
    @filling = Filling.new
  end

  def index
    @fillings = Filling.all
  end

  def show
    @filling = Filling.find(params[:id])
  end
  def edit
    @filling = Filling.find(params[:id])
  end
  def update
    @filling = Filling.find(params[:id])

    if @filling.update(filling_params)
      redirect_to @filling
    else
    render 'edit'
    end
  end
  def destroy
    @filling = Filling.find(params[:id])
    @filling.destroy
    redirect_to fillings_path
  end
  def delete
  end

  def create
    @filling = Filling.new(filling_params) 
    if @filling.save
      redirect_to @filling
    else
      render 'new'
    end
  end
  private
  private
  def filling_params
  	params.require(:filling).permit(:content, :score , :field , :answer)
  end

end
