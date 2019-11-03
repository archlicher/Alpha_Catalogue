class AddArticleRefToButtonManifests < ActiveRecord::Migration[5.2]
  def change
    add_reference :button_manifests, :article, foreign_key: true
    add_reference :button_manifests, :button, foreign_key: true
  end
end
