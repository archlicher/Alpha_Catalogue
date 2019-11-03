class CreateFabrics < ActiveRecord::Migration[5.2]
  def change
    create_table :fabrics do |t|
      t.string :fabric
      t.string :composition
      t.integer :weigth
      t.string :color
      t.string :measure
      t.decimal :price, precision: 10, scale: 2
      t.float :count

      t.timestamps
    end
  end
end
