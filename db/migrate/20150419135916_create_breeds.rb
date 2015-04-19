class CreateBreeds < ActiveRecord::Migration
  def change
    create_table :breeds do |t|
      t.string :breed
      t.text :description

      t.timestamps null: false
    end
  end
end
