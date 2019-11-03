class CreateThreadingManifests < ActiveRecord::Migration[5.2]
  def change
    create_table :threading_manifests do |t|
      t.float :count

      t.timestamps
    end
  end
end
