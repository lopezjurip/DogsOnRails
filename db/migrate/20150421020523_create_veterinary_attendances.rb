class CreateVeterinaryAttendances < ActiveRecord::Migration
  def change
    create_table :veterinary_attendances do |t|
      t.references :dog, index: true, foreign_key: true
      t.references :veterinary, index: true, foreign_key: true
      t.boolean :healthy, default: true
      t.text :notes, default: ''

      t.timestamps null: false
    end
  end
end
