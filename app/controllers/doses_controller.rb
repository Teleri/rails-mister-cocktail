class DosesController < ApplicationController
  before_action :find_dose, only: [:show, :edit, :update, :destroy]

  def index
    @doses = Dose.all
  end

  def show
    # code
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save!
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end

  def edit
    # code
  end

  def update
    @dose.update(dose_params)
    redirect_to dose_path(@dose)
  end

  def destroy
    @dose.destroy
    redirect_to root_path
  end

  private

  def find_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description, :cocktail, :ingredients)
  end
end
