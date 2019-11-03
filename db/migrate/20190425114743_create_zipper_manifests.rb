class CreateZipperManifests < ActiveRecord::Migration[5.2]
  def change
    create_table :zipper_manifests do |t|
      t.integer :count

      t.timestamps
    end
  end
end
