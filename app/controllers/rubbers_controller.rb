class RubbersController < ApplicationController
  def index
    @rubbers = Rubber.all
  end

  def show
    @rubber = Rubber.find(params[:id])
  end

  def new
    @rubber = Rubber.new
  end

  def create
    @rubber = Rubber.new(clean_params)

    respond_to do |format|
      if @rubber.save
        format.html { redirect_to @rubber, notice: 'Rubber was successfully created.' }
        format.json { render :show, status: :created, location: @rubber }
      else
        format.html { render :new }
        format.json { render json: @rubber.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @rubber = Rubber.find(params[:id])
  end

  def update
    @rubber = Rubber.find(params[:id])
    update_params[:substract] == 'on' ? @rubber.substract(update_params[:count].to_i) : @rubber.add(update_params[:count].to_i)
    respond_to do |format|
      if @rubber
        format.html { redirect_to @rubber, notice: 'Rubber was successfully updated.' }
        format.json { render :show, status: :ok, location: @rubber }
      else
        format.html { render :edit }
        format.json { render json: @rubber.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def clean_params
    params.permit(:color, :width, :count)
  end

  def update_params
    params.permit(:count, :substract)
  end
end
