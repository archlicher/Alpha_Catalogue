class AddArticleRefToThreadingManifests < ActiveRecord::Migration[5.2]
  def change
    add_reference :threading_manifests, :article, foreign_key: true
    add_reference :threading_manifests, :threading, foreign_key: true
  end
end
