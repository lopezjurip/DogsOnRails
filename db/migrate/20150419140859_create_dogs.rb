class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.boolean :male
      t.references :user, index: true, foreign_key: true
      t.date :born_at

      t.timestamps null: false
    end
  end
end
