class FabricsController < ApplicationController
  def index
    @fabrics = Fabric.all
  end

  def show
    @fabric = Fabric.find(params[:id])
  end

  def new
    @fabric = Fabric.new
  end

  def create
    @fabric = Fabric.new(clean_params)

    respond_to do |format|
      if @fabric.save
        format.html { redirect_to @fabric, notice: 'Fabric was successfully created.' }
        format.json { render :show, status: :created, location: @fabric }
      else
        format.html { render :new }
        format.json { render json: @fabric.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @fabric = Fabric.find(params[:id])
  end

  def update
    @fabric = Fabric.find(params[:id])
    if update_params[:substract] == 'on'
      @fabric.substract(update_params[:count].to_f, update_params[:price].to_d)
    else
      @fabric.add(update_params[:count].to_f, update_params[:price].to_d)
    end

    respond_to do |format|
      if @fabric
        format.html { redirect_to @fabric, notice: 'Button was successfully updated.' }
        format.json { render :show, status: :ok, location: @fabric }
      else
        format.html { render :edit }
        format.json { render json: @fabric.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def clean_params
    params.permit(:fabric, :composition, :weigth, :color, :measure, :price, :count)
  end

  def update_params
    params.permit(:substract, :count, :price)
  end
end
