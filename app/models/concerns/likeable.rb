module Likeable
  extend ActiveSupport::Concern

  included do
    has_many :likes, -> { order(id: :desc) }, as: :likeable, dependent: :destroy
  end

  def add_like_by (user)
    Like.create!(user:user, likeable:self)
  end
end