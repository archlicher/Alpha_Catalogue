class AddArticleRefToZipperManifests < ActiveRecord::Migration[5.2]
  def change
    add_reference :zipper_manifests, :article, foreign_key: true
    add_reference :zipper_manifests, :zipper, foreign_key: true
  end
end
