class CreateRubberManifests < ActiveRecord::Migration[5.2]
  def change
    create_table :rubber_manifests do |t|
      t.float :count

      t.timestamps
    end
  end
end
