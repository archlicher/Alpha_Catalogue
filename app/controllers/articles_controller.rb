class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(clean_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to  fabric_manifests_path, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new } #, params: clean_params }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def clean_params
    params.permit(:title, :description)
  end
end
