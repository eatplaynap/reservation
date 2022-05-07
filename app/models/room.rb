class Room < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }, format: { with: /.*#\d{2}\z/ }
  validates :place, presence: true,  inclusion: { in: ['東京', '大阪', '福岡', '札幌', '仙台', '名古屋', '金沢'] }
  validates :number, presence: true, numericality: { greater_than_or_equal_to: 5, less_than_or_equal_to: 30 }
