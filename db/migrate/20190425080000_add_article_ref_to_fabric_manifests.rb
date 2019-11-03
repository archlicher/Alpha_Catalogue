class AddArticleRefToFabricManifests < ActiveRecord::Migration[5.2]
  def change
    add_reference :fabric_manifests, :article, foreign_key: true
    add_reference :fabric_manifests, :fabric, foreign_key: true
  end
end
