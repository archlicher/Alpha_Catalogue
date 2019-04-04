class ButtonsController < ApplicationController
  def index
    @buttons = Button.all
  end

  def show
    @button = Button.find(params[:id])
  end

  def new
    @button = Button.new
  end

  def create
    @button = Button.new(clean_params)

    respond_to do |format|
      if @button.save
        format.html { redirect_to @button, notice: 'Button was successfully created.' }
        format.json { render :show, status: :created, location: @button }
      else
        format.html { render :new }
        format.json { render json: @button.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @button = Button.find(params[:id])
  end

  def update
    @button = Button.find(params[:id])
    update_params[:substract] == 'on' ? @button.substract(update_params[:count].to_i) : @button.add(update_params[:count].to_i)
    respond_to do |format|
      if @button
        format.html { redirect_to @button, notice: 'Button was successfully updated.' }
        format.json { render :show, status: :ok, location: @button }
      else
        format.html { render :edit }
        format.json { render json: @button.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def clean_params
    params.permit(:type_of_button, :size, :count)
  end

  def update_params
    params.permit(:count, :substract)
  end
end
