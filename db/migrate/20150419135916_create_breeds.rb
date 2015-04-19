class CreateBreeds < ActiveRecord::Migration
  def change
    create_table :breeds do |t|
      t.string :breed, null: false
      t.text :description, default: ''

      t.timestamps null: false
    end
  end
end
