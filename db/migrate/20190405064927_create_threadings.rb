class CreateThreadings < ActiveRecord::Migration[5.2]
  def change
    create_table :threadings do |t|
      t.string :color
      t.integer :count

      t.timestamps
    end
  end
end
