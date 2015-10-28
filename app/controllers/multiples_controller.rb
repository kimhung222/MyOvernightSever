class MultiplesController < ApplicationController
  def new
  	@multiple = Multiple.new
  end

  def index
  	@multiples = Multiple.all
  end

  def show
  	@multiple = Multiple.find(params[:id])
  end
  def edit
  	@multiple = Multiple.find(params[:id])
  end
  def update
  	@multiple = Multiple.find(params[:id])

    if @multiple.update(multiple_params)
      redirect_to @multiple
    else
    render 'edit'
    end
  end
  def destroy
  	@multiple = Multiple.find(params[:id])
  	@multiple.destroy
  	redirect_to multiples_path
  end
  def delete
  end

  def create
  	@multiple = Multiple.new(multiple_params) 
  	if @multiple.save
  		redirect_to @multiple
  	else
  		render 'new'
  	end
  end
  private
  def multiple_params
  	params.require(:multiple).permit(:content, :field , :score , :A , :B ,:C , :D , :answer)
  end


end
