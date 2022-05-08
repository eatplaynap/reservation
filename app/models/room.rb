class Room < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }
  validates :place, presence: true,  inclusion: { in: ['東京', '大阪', '福岡', '札幌', '仙台', '名古屋', '金沢'] }
  validates :number, presence: true
  validate :number_check
  validate :name_check

  private
  def name_check
    name_pattern = /.*#\d{2}\z/
    unless name_pattern.match(self.name)
      errors.add(:name, '会議室名が正しくありません')
    end
  end

  def number_check
    unless self.number % 5 == 0
      errors.add(:number, '人数は5の倍数を入力ください')
    end
  end
end
