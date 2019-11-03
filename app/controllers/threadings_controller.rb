class ThreadingsController < ApplicationController
  def index
    @threadings = Threading.all
  end

  def show
    @threading = Threading.find(params[:id])
  end

  def new
    @threading = Threading.new
  end

  def create
    @threading = Threading.new(clean_params)

    respond_to do |format|
      if @threading.save
        format.html { redirect_to @threading, notice: 'Button was successfully created.' }
        format.json { render :show, status: :created, location: @threading }
      else
        format.html { render :new }
        format.json { render json: @threading.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @threading = Threading.find(params[:id])
  end

  def update
    @threading = Threading.find(params[:id])
    update_params[:substract] == 'on' ? @threading.substract(update_params[:count].to_i) : @threading.add(update_params[:count].to_i)
    respond_to do |format|
      if @threading
        format.html { redirect_to @threading, notice: 'Threading was successfully updated.' }
        format.json { render :show, status: :ok, location: @threading }
      else
        format.html { render :edit }
        format.json { render json: @threading.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def clean_params
    params.permit(:color, :count)
  end

  def update_params
    params.permit(:count, :substract)
  end
end
