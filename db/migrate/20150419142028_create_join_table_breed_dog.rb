class CreateJoinTableBreedDog < ActiveRecord::Migration
  def change
    create_table :breeds_dogs, id: false do |t|
      t.belongs_to :breed, index: true
      t.belongs_to :dog, index: true
    end
  end
end
