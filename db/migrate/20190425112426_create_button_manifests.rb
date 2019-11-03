class CreateButtonManifests < ActiveRecord::Migration[5.2]
  def change
    create_table :button_manifests do |t|
      t.float :count

      t.timestamps
    end
  end
end
