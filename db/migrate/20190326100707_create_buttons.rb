class CreateButtons < ActiveRecord::Migration[5.2]
  def change
    create_table :buttons do |t|
      t.string :type_of_button
      t.integer :size
      t.integer :count

      t.timestamps
    end
  end
end
