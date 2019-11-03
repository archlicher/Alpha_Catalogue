class CreateZippers < ActiveRecord::Migration[5.2]
  def change
    create_table :zippers do |t|
      t.string :name
      t.integer :zipper_length
      t.integer :count

      t.timestamps
    end
  end
end
