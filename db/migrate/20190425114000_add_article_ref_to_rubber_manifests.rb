class AddArticleRefToRubberManifests < ActiveRecord::Migration[5.2]
  def change
    add_reference :rubber_manifests, :article, foreign_key: true
    add_reference :rubber_manifests, :rubber, foreign_key: true
  end
end
