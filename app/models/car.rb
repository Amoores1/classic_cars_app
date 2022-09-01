class Car < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_manufacturer_and_model,
    against: [ :manufacturer, :model, :category],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
7
