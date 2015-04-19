class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name, null: false
      t.boolean :male, null: false, default: true
      t.references :user, index: true, foreign_key: true
      t.date :born_at

      t.timestamps null: false
    end
  end
end
