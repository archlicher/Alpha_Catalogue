class AddArticleRefToLabelManifests < ActiveRecord::Migration[5.2]
  def change
    add_reference :label_manifests, :article, foreign_key: true
    add_reference :label_manifests, :label, foreign_key: true
  end
end
