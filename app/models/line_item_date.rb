class LineItemDate < ApplicationRecord
  has_many :line_item_dates, dependent: :destroy
  
  belongs_to :quote

  validates :date, presence: true, uniqueness: { scope: :quote_id }

  scope :ordered, -> { order(date: :asc) }
end
