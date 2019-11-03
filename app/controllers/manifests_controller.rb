class ManifestsController < ApplicationController
  def fabric
    @article = Article.last
    @fabric_manifest = FabricManifest.new
  end

  def fabric_create
    @article = Article.last
    @fabric_manifest = FabricManifest.new(fabric_params)

    respond_to do |format|
      if @fabric_manifest.save
        format.html { redirect_to add_fabric_manifests_path, notice: 'Fabric manifest was successfully created.' }
      else
        format.html { render :fabric }
      end
    end
  end

  def add_fabric
    @article = Article.last
  end

  def button
    @article = Article.last
    @button = ButtonManifest.new
  end

  def button_create
    @article = Article.last
    @button_manifest = ButtonManifest.new(button_params)

    respond_to do |format|
      if @button_manifest.save
        format.html { redirect_to add_button_manifests_path, notice: 'Button manifest was successfully created.' }
      else
        format.html { render :button }
      end
    end
  end

  def add_button
    @article = Article.last
  end

  def label
    @article = Article.last
    @label = LabelManifest.new
  end

  def label_create
    @article = Article.last
    @label_manifest = LabelManifest.new(button_params)

    respond_to do |format|
      if @label_manifest.save
        format.html { redirect_to add_label_manifests_path, notice: 'Label manifest was successfully created.' }
      else
        format.html { render :label }
      end
    end
  end

  def add_label
    @article = Article.last
  end

  def rubber
    @article = Article.last
    @rubber = RubberManifest.new
  end

  def rubber_create
    @article = Article.last
    @rubber_manifest = RubberManifest.new(button_params)

    respond_to do |format|
      if @rubber_manifest.save
        format.html { redirect_to add_rubber_manifests_path, notice: 'Rubber manifest was successfully created.' }
      else
        format.html { render :rubber }
      end
    end
  end

  def add_rubber
    @article = Article.last
  end

  def threading
    @article = Article.last
    @threading = ThreadingManifest.new
  end

  def threading_create
    @article = Article.last
    @threading_manifest = ThreadingManifest.new(button_params)

    respond_to do |format|
      if @threading_manifest.save
        format.html { redirect_to add_threading_manifests_path, notice: 'Threading manifest was successfully created.' }
      else
        format.html { render :threading }
      end
    end
  end

  def add_threading
    @article = Article.last
  end

  def zipper
    @article = Article.last
    @zipper = ZipperManifest.new
  end

  def zipper_create
    @article = Article.last
    @zipper_manifest = ZipperManifest.new(button_params)

    respond_to do |format|
      if @zipper_manifest.save
        format.html { redirect_to add_zipper_manifests_path, notice: 'Zipper manifest was successfully created.' }
      else
        format.html { render :zipper }
      end
    end
  end

  def add_zipper
    @article = Article.last
  end

  private

  def fabric_params
    params.permit(:article_id, :fabric_id, :count)
  end

  def button_params
    params.permit(:article_id, :button_id, :count)
  end

  def label_params
    params.permit(:article_id, :label_id, :count)
  end

  def rubber_params
    params.permit(:article_id, :rubber_id, :count)
  end
end
