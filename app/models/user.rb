class User < ApplicationRecord
  has_many :best_nines, dependent: :destroy

  before_save {email.downcase!}
  validates :name, presence: true, length: {maximum: 30}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
                    format: {with: VALID_EMAIL_REGEX}, uniqueness: true
  validates :password, presence: true, length: {minimum: 8, maximum: 32}, allow_nil: true
  has_secure_password
end