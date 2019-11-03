class CreateRubbers < ActiveRecord::Migration[5.2]
  def change
    create_table :rubbers do |t|
      t.string :color
      t.float :width
      t.integer :count

      t.timestamps
    end
  end
end
