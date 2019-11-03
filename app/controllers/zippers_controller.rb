class ZippersController < ApplicationController
  def index
    @zippers = Zipper.all
  end

  def show
    @zipper = Zipper.find(params[:id])
  end

  def new
    @zipper = Zipper.new
  end

  def create
    @zipper = Zipper.new(clean_params)

    respond_to do |format|
      if @zipper.save
        format.html { redirect_to @zipper, notice: 'Zipper was successfully created.' }
        format.json { render :show, status: :ok, location: @zipper }
      else
        format.html { render :new }
        format.json { render json: @zipper.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @zipper = Zipper.find(params[:id])
  end

  def update
    @zipper = Zipper.find(params[:id])
    update_params[:substract] == 'on' ? @zipper.substract(update_params[:count].to_i) : @zipper.add(update_params[:count].to_i)
    respond_to do |format|
      if @zipper
        format.html { redirect_to @zipper, notice: 'Zipper was successfully updated.' }
        format.json { render :show, status: :ok, location: @zipper }
      else
        format.html { render :edit }
        format.json { render json: @zipper.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def clean_params
    params.permit(:name, :zipper_length, :count)
  end

  def update_params
    params.permit(:count, :substract)
  end
end
