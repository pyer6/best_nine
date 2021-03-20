class BestNine < ApplicationRecord
  validates :title, presence: true, length:{maximum: 30}
  validates :one_position, presence: true
  validates :one_name, presence: true
  validates :two_position, presence: true
  validates :two_name, presence: true
  validates :three_position, presence: true
  validates :three_name, presence: true
  validates :four_position, presence: true
  validates :four_name, presence: true
  validates :five_position, presence: true
  validates :five_name, presence: true
  validates :six_position, presence: true
  validates :six_name, presence: true
  validates :seven_position, presence: true
  validates :seven_name, presence: true
  validates :eight_position, presence: true
  validates :eight_name, presence: true
  validates :nine_position, presence: true
  validates :nine_name, presence: true
  validates :starting, presence: true
  validates :relief, presence: true
  validates :closer, presence: true

  POSITION = {'捕': 2, '一': 3, '二': 4, '三': 5, '遊': 6, '左': 7, '中': 8, '右': 9, 'DH': 10}
end