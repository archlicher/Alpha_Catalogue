class LabelsController < ApplicationController
  def index
    @labels = Label.all
  end

  def show
    @label = Label.find(params[:id])
  end

  def new
    @label = Label.new
  end

  def create
    @label = Label.new(clean_params)

    respond_to do |format|
      if @label.save
        format.html { redirect_to @label, notice: 'Label was successfully created.' }
        format.json { render :show, status: :created, location: @label }
      else
        format.html { render :new }
        format.json { render json: @label.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @label = Label.find(params[:id])
  end

  def update
    @label = Label.find(params[:id])
    update_params[:substract] == 'on' ? @label.substract(update_params[:count].to_i) : @label.add(update_params[:count].to_i)
    respond_to do |format|
      if @label
        format.html { redirect_to @label, notice: 'Button was successfully updated.' }
        format.json { render :show, status: :ok, location: @label }
      else
        format.html { render :edit }
        format.json { render json: @label.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def clean_params
    params.permit(:measure, :count)
  end

  def update_params
    params.permit(:substract, :count)
  end
end
