class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :accountable_person
      t.string :bulstat
      t.text :address

      t.timestamps
    end
  end
end
