class KittensController < ApplicationController
  def index
    @kitten = Kitten.all

    respond_to do |format|
      format.json { render json: @kitten }
    end
  end

  def show
    @kitten = Kitten.find(params[:id])
    respond_to do |format|
      format.json { render json: @kitten }
    end
  end

  def new
    @kitten = Kitten.new
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      flash[:notice] = "Congrats, you have added a new kitten named #{@kitten.name}"
      redirect_to @kitten
    else
      flash[:alert] = "Oops!, something went wrong..."
      render :new
    end
  end

  def update
    @kitten = Kitten.find(params[:id])
    if @kitten.update(kitten_params)
      flash[:notice] = "Congrats, you have successfully updated #{@kitten.name}'s info"
      redirect_to @kitten
    else
      flash[:alert] = "Oops!, something went wrong..."
      render :edit
    end
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy
    flash[:notice] = "You have deleted #{@kitten.name}"
    redirect_to kittens_path
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
