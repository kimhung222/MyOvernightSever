class YesnosController < ApplicationController
  def new
  	@yesno = Yesno.new
  end

  def index
  	@yesnos = Yesno.all
  end

  def show
  	@yesno = Yesno.find(params[:id])
  end
  def edit
  	@yesno = Yesno.find(params[:id])
  end
  def update
  	@yesno = Yesno.find(params[:id])

    if @yesno.update(yesno_params)
      redirect_to @yesno
    else
    render 'edit'
    end
  end
  def destroy
  	@yesno = Yesno.find(params[:id])
  	@yesno.destroy
  	redirect_to yesnos_path
  end
  def delete
  end

  def create
  	@yesno = Yesno.new(yesno_params) 
  	if @yesno.save
  		redirect_to @yesno
  	else
  		render 'new'
  	end
  end
  private
  def yesno_params
  	params.require(:yesno).permit(:content, :field , :score , :answer)
  end	
end
