class AddLikesCount < ActiveRecord::Migration
  def change
    [:veterinaries, :dogs, :breeds].each do |model|
      add_column model, :likes_count, :integer, default: 0
    end
  end
end
